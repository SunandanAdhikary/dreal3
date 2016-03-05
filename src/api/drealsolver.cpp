#include <fenv.h>
#include <algorithm>
#include <csignal>
#include <unordered_map>
#include "api/drealsolver.h"
#include "simplifiers/ExpandITEs.h"
#include "simplifiers/ArraySimplify.h"
#include "simplifiers/BVBooleanize.h"
#include "simplifiers/TopLevelProp.h"
#include "simplifiers/DLRescale.h"
#include "simplifiers/Ackermanize.h"
#include "simplifiers/Purify.h"
#include "util/string.h"
#include "dsolvers/nra_solver.h"

using std::unordered_map;
using std::cerr;
using std::endl;
using std::vector;
using std::ostream;
using std::string;
using std::pair;

namespace opensmt {
    bool stop;
} 

drealsolver::drealsolver()
    :config_p(new SMTConfig()),config(*config_p),
	sstore_p(new SStore(config)),sstore(*sstore_p),
	egraph_p(new Egraph(config,sstore)),egraph(*egraph_p),
	solver_p(new SimpSMTSolver(egraph,config)),solver(*solver_p),
	cnfizer_p(new Tseitin(egraph,solver,config,sstore)),cnfizer(*cnfizer_p),
	state(l_Undef),nof_checksat(0),init(false) {
    config.incremental = 1;
}

drealsolver::~drealsolver() {
    assert(config_p);
    assert(sstore_p);
    assert(egraph_p);
    assert(solver_p);
    assert(cnfizer_p);
    delete cnfizer_p;
    delete solver_p;
    delete egraph_p;
    delete sstore_p;
    delete config_p;
}

void drealsolver::SetLogic( logic_t l )  {
    config.logic = l;
    egraph.initializeStore( );
    solver.initialize( );
    egraph.initializeTheorySolvers( &solver );
    init = true;
}

void drealsolver::SetLogic( const char * str ) {
    if (strcmp(str,"QF_NRA_ODE")==0) 
	SetLogic(QF_NRA_ODE);
    else 
	SetLogic(QF_NRA);
}

void drealsolver::SetInfo( const char * key )
{
  dreal_error2( "command not supported (yet)", key );
}

void
drealsolver::SetInfo( const char * key, const char * attr )
{
  assert( key );
  assert( attr );

  if ( strcmp( key, ":status" ) == 0 )
  {
    if ( strcmp( attr, "sat" ) == 0 )
      config.status = l_True;
    else if ( strcmp( attr, "unsat" ) == 0 )
      config.status = l_False;
    else if ( strcmp( attr, "unknown" ) == 0 )
      config.status = l_Undef;
    else
      dreal_error2( "unrecognized attribute", attr );
  }
  else if ( strcmp( key, ":smt-lib-version" ) == 0 )
    ; // Do nothing
  else if ( strcmp( key, ":category" ) == 0 )
    ; // Do nothing
  else if ( strcmp( key, ":source" ) == 0 )
    ; // Do nothing
  else if ( strcmp( key, ":precision" ) == 0) {
      egraph.setPrecision(atof(attr));
      if (config.nra_precision == 0) {
          config.nra_precision = strtod(attr, nullptr);
      }
  }
  else
    dreal_error2( "unrecognized key", key );
}

void
drealsolver::SetOption( const char * key )
{
  dreal_error2( "command not supported (yet)", key );
}

void
drealsolver::SetOption( const char * key, const char * attr )
{
  assert( key );
  assert( attr );

  if ( strcmp( key, ":print-success" ) == 0 )
  {
    if ( strcmp( attr, "true" ) == 0 )
      config.print_success = true;
  }
  else if ( strcmp( key, ":expand-definitions" ) == 0 )
    dreal_warning2( key, " not yet supported, skipping.")
  else if ( strcmp( key, ":interactive-mode" ) == 0 )
    dreal_warning2( key, " not yet supported, skipping.")
  else if ( strcmp( key, ":produce-proofs" ) == 0 )
  {
    if ( strcmp( attr, "true" ) == 0 )
    {
#ifndef PRODUCE_PROOF
      dreal_error( "You must configure code with --enable-proof to produce proofs" );
#endif
      config.setProduceProofs( );
    }
  }
  else if ( strcmp( key, ":produce-unsat-cores" ) == 0 )
    dreal_warning2( key, " not yet supported, skipping.")
  else if ( strcmp( key, ":produce-models" ) == 0 )
  {
    if ( strcmp( attr, "true" ) == 0 )
      config.setProduceModels( );
  }
  else if ( strcmp( key, ":produce-assignments" ) == 0 )
    dreal_warning2( key, " not yet supported, skipping.")
  else if ( strcmp( key, ":regular-output-channel" ) == 0 )
    config.setRegularOutputChannel( attr );
  else if ( strcmp( key, ":diagnostic-output-channel" ) == 0 )
    config.setDiagnosticOutputChannel( attr );
  else if ( strcmp( key, ":random-seed" ) == 0 )
    dreal_warning2( key, " not yet supported, skipping.")
  else if ( strcmp( key, ":verbosity" ) == 0 )
    config.verbosity = atoi( attr );
  else if ( strcmp( key, ":precision" ) == 0 ) {
      // Give precedence to the command line option "--precision"
      if (config.nra_precision == 0) {
          config.nra_precision = strtod(attr, nullptr);
      }
  }
  else
    dreal_warning2( "skipping option ", key );
}

int
drealsolver::executeCommands( )
{
  assert( init );

  int ret_val = 0;

  // Weird situation
  if ( nof_checksat <= 0 )
    return 2;

  // Trick for efficiency
  if ( config.incremental == 0 && nof_checksat == 1 )
    ret_val = executeStatic( );
  // Normal incremental solving
  else
  {
    config.incremental = 1;
    ret_val = executeIncremental( );
  }

  return ret_val;
}

//
// Execute a generic SMTLIB2 script
//
int drealsolver::executeIncremental( )
{
  assert( init );
  assert( config.incremental == 1 );

  // Initialize theory solvers
  egraph.initializeTheorySolvers( &solver );

  lbool status = l_Undef;

  for ( size_t i = 0 ; i < command_list.size( ) ;  ++ i )
  {
    Command & c = command_list[ i ];

    // Commands blocked with assert( falase ) are issued from parser directly
    switch( c.command )
    {
      case SET_LOGIC:
        assert( false );
        break;
      case SET_OPTION:
        assert( false );
        break;
      case SET_INFO:
        assert( false );
        break;
      case DECLARE_SORT:
        DeclareSort( c.str, c.num );
        break;
      case DEFINE_SORT:
        dreal_error( "construct define-sort not yet supported" );
        break;
      case DECLARE_FUN:
        DeclareFun( c.str, c.snode );
        break;
      case DEFINE_FUN:
        dreal_error( "construct define-fun not yet supported" );
        break;
      case DEFINE_ODE:
        dreal_error( "construct define-ode not yet supported" ); /* added for dReal2 */
        break;
      case PUSH:
        Push( );
        break;
      case POP:
        Pop( );
        break;
      case ASSERT:
        Assert( c.enode );
        break;
      case CHECK_SAT:
        status = CheckSAT( );
        break;
      case GET_ASSERTIONS:
        dreal_error( "construct get-assertions not yet supported" );
        break;
      case GET_PROOF:
        GetProof( );
        break;
      case GET_INTERPOLANTS:
        GetInterpolants( );
        break;
      case GET_UNSAT_CORE:
        dreal_error( "construct get-unsat-core not yet supported" );
        break;
      case GET_VALUE:
        dreal_error( "construct get-value not yet supported" );
        break;
      case GET_ASSIGNMENT:
        dreal_error( "construct get-assignment not yet supported" );
        break;
      case GET_OPTION:
        dreal_error( "construct get-option not yet supported" );
        break;
      case GET_INFO:
        dreal_error( "construct get-info not yet supported" );
        break;
      case EXIT:
        Exit( );
        break;
      default:
        dreal_error( "case not handled" );
    }
  }

  return 0;
}

//
// Execute a script in which there is only
// one check-sat. We can use specialized
// functions, such as preprocessing, to
// improve performance
//
int drealsolver::executeStatic( )
{
  assert( init );
  assert( config.incremental == 0 );
  //
  // Hack for SMT-COMP 2010 for retrieving formula
  //
  for ( size_t i = 0 ; i < command_list.size( ) ; i ++ )
  {
    Command & c = command_list[ i ];
    if ( c.command == ASSERT )
      Assert( c.enode );
    else if ( c.command == CHECK_SAT )
    {
#ifdef PRODUCE_PROOF
      if ( config.produce_inter > 0 )
        staticCheckSATIterp( );
      else
#endif
        staticCheckSAT( );
    }
    else if ( c.command == EXIT )
      Exit( );
    else if ( c.command == GET_PROOF )
      GetProof( );
    else if ( c.command == GET_INTERPOLANTS )
      GetInterpolants( );
    else
      dreal_error( "command not supported (yet)" );
  }

  return 0;
}

void drealsolver::staticCheckSAT( )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Statically Checking" << endl;

  // Retrieve the formula
  Enode * formula = egraph.getUncheckedAssertions( );

  if ( config.dump_formula != 0 )
    egraph.dumpToFile( "original.smt2", formula );

  if ( formula == NULL )
    dreal_error( "formula undefined" );

  if ( config.logic == UNDEF )
    dreal_error( "unable to determine logic" );

  // Removes ITEs if there is any
  if ( egraph.hasItes( ) )
  {
#ifdef PRODUCE_PROOF
    if ( config.produce_inter > 0 )
      dreal_error( "Interpolation not supported for ite construct" );
#endif
    ExpandITEs expander( egraph, config );
    formula = expander.doit( formula );

    if ( config.dump_formula != 0 )
      egraph.dumpToFile( "ite_expanded.smt2", formula );
  }

  // Gather interface terms for DTC
  if ( ( config.logic == QF_UFIDL
      || config.logic == QF_UFLRA )
    // Don't use with DTC of course
    && config.sat_lazy_dtc == 1
    // Don't use when dumping interpolants
    && config.sat_dump_rnd_inter == 0 )
  {
    Purify purifier( egraph, config );
    formula = purifier.doit( formula );

    if ( config.dump_formula != 0 )
      egraph.dumpToFile( "purified.smt2", formula );
  }

  // Ackermanize away functional symbols
  if ( ( config.logic == QF_UFIDL
      || config.logic == QF_UFLRA )
    // Don't use with DTC of course
    && config.sat_lazy_dtc == 0
    // Don't use when dumping interpolants
    && config.sat_dump_rnd_inter == 0 )
  {
    Ackermanize ackermanizer( egraph, config );
    formula = ackermanizer.doit( formula );

    if ( config.dump_formula != 0 )
      egraph.dumpToFile( "ackermanized.smt2", formula );
  }

  // Artificially create a boolean
  // abstraction, if necessary
  if ( config.logic == QF_BV )
  {
    BVBooleanize booleanizer( egraph, config );
    formula = booleanizer.doit( formula );
  }

  // Top-Level Propagator. It also canonize atoms
  TopLevelProp propagator( egraph, config );
  formula = propagator.doit( formula );

  // Applies array axioms where possible
  if( config.logic == QF_AX )
  {
    ArraySimplify simplifier( egraph, config );
    formula = simplifier.doit( formula );
  }

  // Convert RDL into IDL, also compute if GMP is needed
  if ( config.logic == QF_RDL )
  {
    DLRescale rescaler( egraph, config );
    rescaler.doit( formula );
  }

  // For static checking, make sure that if DTC is used
  // then incrementality is enabled
  if ( ( config.logic == QF_UFIDL
      || config.logic == QF_UFLRA )
      && config.sat_lazy_dtc != 0 )
  {
    config.incremental = 1;
  }

  if ( config.dump_formula != 0 )
    egraph.dumpToFile( "presolve.smt2", formula );

  // Solve only if not simplified already
  if ( formula->isTrue( ) )
  {
    state = l_True;
  }
  else if ( formula->isFalse( ) )
  {
    state = l_False;
  }
  else
  {
    // Initialize theory solvers
    egraph.initializeTheorySolvers( &solver );

    // Compute polarities
    egraph.computePolarities( formula );

    // CNFize the input formula and feed clauses to the solver
    state = cnfizer.cnfizeAndGiveToSolver( formula );

    // Solve
    if ( state == l_Undef )
    {
      state = solver.smtSolve( config.sat_preprocess_booleans != 0
                            || config.sat_preprocess_theory   != 0 );
    }

    // If computation has been stopped, return undef
    if ( opensmt::stop ) state = l_Undef;
  }
}

#ifdef PRODUCE_PROOF
void drealsolver::staticCheckSATIterp( )
{
  assert( config.produce_inter > 0 );

  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Statically Checking" << endl;

  if ( config.logic == UNDEF )
    dreal_error( "unable to determine logic" );

  if ( egraph.hasItes( ) )
    dreal_error( "Interpolation not supported for ite construct" );

  if ( config.logic == QF_UFIDL
    || config.logic == QF_UFLRA )
    dreal_error( "Interpolation not supported (yet) for theory combination" );

  // Top-Level Propagator. It also canonize atoms
  TopLevelProp propagator( egraph, config );

  // Initialize theory solvers
  egraph.initializeTheorySolvers( &solver );

  for ( int in = 1 ; ; in ++ )
  {
    const uint64_t partition = SETBIT( in );
    // Get partition
    Enode * formula = egraph.getNextAssertion( );
    assert( in != 1 || formula != NULL );
    if ( formula == NULL ) break;
    // Canonize atoms
    formula = propagator.doit( formula );
    // CNFize the input formula and feed clauses to the solver
    state = cnfizer.cnfizeAndGiveToSolver( formula, partition );
  }

  // Solve
  if ( state == l_Undef )
  {
    if ( config.sat_preprocess_booleans != 0
      || config.sat_preprocess_theory != 0 )
      dreal_warning( "not using SMT-preprocessing with interpolation" );
    state = solver.smtSolve( false );
  }

  // If computation has been stopped, return undef
  if ( opensmt::stop ) state = l_Undef;
}
#endif

//
// Here set the right parameter values for SMTCOMP
//
void drealsolver::loadCustomSettings( )
{
  if ( config.logic == QF_IDL )
  {
    config.sat_polarity_mode = 5;
    config.sat_learn_up_to_size = 5;
    config.sat_minimize_conflicts = 1;
    config.sat_restart_first = 70;
    config.dl_theory_propagation = 1;
    config.sat_preprocess_booleans = 1;

  }
  else if ( config.logic == QF_UFIDL )
  {
    config.sat_polarity_mode = 1;
    config.sat_learn_up_to_size = 5;
    config.sat_minimize_conflicts = 1;
    config.sat_restart_first = 100;
    config.dl_theory_propagation = 1;
    config.sat_preprocess_booleans = 0;
  }
  else if ( config.logic == QF_RDL )
  {
    config.sat_polarity_mode = 0;
    config.sat_learn_up_to_size = 5;
    config.sat_minimize_conflicts = 1;
    config.sat_preprocess_booleans = 1;
    config.sat_restart_first = 70;
    config.dl_theory_propagation = 1;
    config.sat_restart_inc = 1.2;
  }
  else if ( config.logic == QF_UF )
  {
    config.sat_polarity_mode = 0;
    config.sat_learn_up_to_size = 8;
    config.sat_minimize_conflicts = 1;
    config.sat_preprocess_booleans = 1;
    config.sat_restart_first = 50;
    config.uf_theory_propagation = 1;
  }
  else if ( config.logic == QF_LRA )
  {
    config.sat_polarity_mode = 0;
    config.sat_learn_up_to_size = 12;
    config.sat_minimize_conflicts = 0;
    config.sat_restart_first = 70;
    config.lra_theory_propagation = 1;
    config.sat_preprocess_booleans = 0;
  }
}

// =======================================================================
// Functions that actually execute actions

void drealsolver::DeclareSort( const char * name, int arity )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Declaring sort "
         << name
         << " of arity "
         << arity
         << endl;

  sstore.newSymbol( name );
}

void drealsolver::DeclareFun( const char * name, Snode * s )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Declaring function "
         << name
         << " of sort "
         << s
         << endl;

  egraph.newSymbol( name, s, true );
}

void drealsolver::DeclareFun( const char * name, Snode * s, const char * p )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Declaring function "
         << name
         << " of sort "
         << s
         << " with precision = "
         << p
         << endl;
  double const vval = strtod(p, nullptr);
  egraph.newSymbol( name, s, true, vval );
}

void drealsolver::DefineODE( char const * name, vector<pair<Enode *, Enode *>> const & odes)
{
    dreal::flow _flow;
    for(auto const & name_odes : odes) {
        _flow.add(name_odes.first, name_odes.second);
    }
    string const sname (name);
    egraph.stepped_flows = (sname.find_first_of("_") != sname.find_last_of("_"));
    egraph.flow_maps[name] = _flow;
}

void drealsolver::Push( )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Pushing backtrack point" << endl;

  solver.pushBacktrackPoint( );
}

void drealsolver::Pop( )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Popping backtrack point" << endl;

  solver.popBacktrackPoint( );
}

void drealsolver::Reset( )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Resetting" << endl;

  solver.reset( );
}

void drealsolver::Assert( Enode * e )
{
  if ( config.verbosity > 1 )
  {
    if ( e->isBooleanOperator( ) )
        cerr << "# drealsolver::Asserting formula " << e
             << " with id " << e->getId( ) << endl;
    else
      cerr << "# drealsolver::Asserting formula " << e << endl;
  }

  // Move an assertion into the Egraph
  // They are stored and might be preprocessed
  // before entering the actual solver
  egraph.addAssertion( e );
}

void drealsolver::GetProof( )
{
#ifdef PRODUCE_PROOF
  if ( state == l_False )
    solver.printProof( config.getRegularOut( ) );
  else
    dreal_warning( "Skipping command (get-proof) as formula is not unsat" );
#else
  dreal_warning( "Skipping command (get-proof): you need a version of opensmt compiled with --enable-proof" );
#endif
}

void drealsolver::GetInterpolants( )
{
#ifdef PRODUCE_PROOF
  if ( config.produce_inter == 0 )
  {
    dreal_warning( "Skipping command (get-interpolants) as (produce-interpolants) is not set" );
  }
  else if ( state == l_False )
  {
    solver.printInter( config.getRegularOut( ) );
  }
  else
  {
    dreal_warning( "Skipping command (get-interpolants) as formula is not unsat" );
  }
#else
  dreal_warning( "Skipping command (get-interpolants): you need a version of opensmt compiled with --enable-proof" );
#endif
}

lbool drealsolver::CheckSAT( )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Checking satisfiability" << endl;

  // Retrieve the conjunction of the
  // yet unchecked assertions
  Enode * formula = egraph.getUncheckedAssertions( );

  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Processing: " << formula << endl;

  // Removes ITEs if there is any
  if ( egraph.hasItes( ) )
  {
#ifdef PRODUCE_PROOF
    if ( config.produce_inter > 0 )
      dreal_error( "Interpolation not supported for ite construct" );
#endif
    ExpandITEs expander( egraph, config );
    formula = expander.doit( formula );

    if ( config.dump_formula != 0 )
      egraph.dumpToFile( "ite_expanded.smt2", formula );
  }

  state = cnfizer.cnfizeAndGiveToSolver( formula );
  if ( state == l_Undef )
    state = solver.solve( );

  if ( config.print_success )
  {
    ostream & out = config.getRegularOut( );
    if ( state == l_Undef )
      out << "unknown" << endl;
    else if ( state == l_False )
      out << "unsat" << endl;
    else {
      fesetround(FE_TONEAREST);
      std::streamsize ss = out.precision();
      out.precision(17);
      if ( config.nra_precision_output ) {
          out << "delta-sat with delta = " << std::fixed << config.nra_precision << endl;
      } else {
          out << "delta-sat" << endl;
      }
      out.precision(ss);
    }
  }
  return state;
}

lbool drealsolver::CheckSAT( vec< Enode * > & assumptions )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Checking satisfiability" << endl;

  // Retrieve the conjunction of the
  // yet unchecked assertions
  Enode * formula = egraph.getUncheckedAssertions( );

  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Processing: " << formula << endl;

  state = cnfizer.cnfizeAndGiveToSolver( formula );

  if ( state == l_Undef )
    state = solver.solve( assumptions, false );

  if ( config.print_success )
  {
    ostream & out = config.getRegularOut( );
    if ( state == l_Undef )
      out << "unknown" << endl;
    else if ( state == l_False )
      out << "unsat" << endl;
    else {
      fesetround(FE_TONEAREST);
      std::streamsize ss = out.precision();
      out.precision(17);
      if ( config.nra_precision_output ) {
          out << "delta-sat with delta = " << std::fixed << config.nra_precision << endl;
      } else {
          out << "delta-sat" << endl;
      }
      out.precision(ss);
    }
  }
  return state;
}

lbool drealsolver::CheckSAT( vec< Enode * > & assumptions, unsigned limit )
{
  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Checking satisfiability" << endl;

  // Retrieve the conjunction of the
  // yet unchecked assertions
  Enode * formula = egraph.getUncheckedAssertions( );

  if ( config.verbosity > 1 )
    cerr << "# drealsolver::Processing: " << formula << endl;

  state = cnfizer.cnfizeAndGiveToSolver( formula );

  if ( state == l_Undef )
    state = solver.solve( assumptions, limit, false );

  if ( config.print_success )
  {
    ostream & out = config.getRegularOut( );
    if ( state == l_Undef )
      out << "unknown" << endl;
    else if ( state == l_False )
      out << "unsat" << endl;
    else {
      fesetround(FE_TONEAREST);
      std::streamsize ss = out.precision();
      out.precision(17);
      if ( config.nra_precision_output ) {
          out << "delta-sat with delta = " << std::fixed << config.nra_precision << endl;
      } else {
          out << "delta-sat" << endl;
      }
      out.precision(ss);
    }
  }
  return state;
}

void drealsolver::Exit( )
{
  PrintResult( state, config.status );
}

void drealsolver::PrintResult( const lbool & result, const lbool & config_status )
{
  ostream & out = config.getRegularOut( );
#ifdef SMTCOMP
  (void)config_status;
#else
  fflush( stderr );
  (void)config_status;
  //
  // For testing purposes we return error if bug is found
  //
  if ( config_status != l_Undef
    && result != l_Undef
    && result != config_status )
    out << "error" << endl;
  else
#endif
    if (config.produce_stats){
      for( auto t : getEgraphP()->getTSolvers()){
        dreal::nra_solver* nra = dynamic_cast<dreal::nra_solver*>(t);
        if(nra){
          //out << "nodes: " << solver.decisions << " " << nra->decisions() << endl;
          break;
        }
      }
    }

  if ( result == l_True ) {
      fesetround(FE_TONEAREST);
      std::streamsize ss = out.precision();
      out.precision(17);
      if ( config.nra_precision_output ) {
          out << "delta-sat with delta = " << std::fixed << config.nra_precision << endl;
      } else {
          out << "delta-sat" << endl;
      }
      out.precision(ss);
  } else if ( result == l_False )
    out << "unsat" << endl;
  else if ( result == l_Undef )
    out << "unknown" << endl;
  else
    dreal_error( "unexpected result" );

  fflush( stdout );

#ifndef SMTCOMP
  if ( config.verbosity )
  {
    //
    // Statistics
    //
    double   cpu_time = cpuTime();
    reportf( "#\n" );
    reportf( "# CPU Time used: %g s\n", cpu_time == 0 ? 0 : cpu_time );
    uint64_t mem_used = memUsed();
    reportf( "# Memory used: %.3f MB\n",  mem_used == 0 ? 0 : mem_used / 1048576.0 );
    reportf( "#\n" );
  }
#endif
}

// =======================================================================
// Functions that add commands to the list

void drealsolver::addAssert( Enode * t )
{
  Command c;
  c.command = ASSERT;
  c.enode = t;
  command_list.push_back( c );
}

void drealsolver::addCheckSAT( )
{
  Command c;
  c.command = CHECK_SAT;
  command_list.push_back( c );
  nof_checksat ++;
}

void drealsolver::addPush( int n )
{
  assert( n > 0 );
  for ( int i = 0 ; i < n ; ++ i )
  {
    Command c;
    c.command = PUSH;
    command_list.push_back( c );
  }
}

void drealsolver::addPop( int n )
{
  assert( n > 0 );
  for ( int i = 0 ; i < n ; ++ i )
  {
    Command c;
    c.command = POP;
    command_list.push_back( c );
  }
}

void drealsolver::addExit( )
{
  Command c;
  c.command = EXIT;
  command_list.push_back( c );
}


void drealsolver::addGetProof( )
{
  Command c;
  c.command = GET_PROOF;
  command_list.push_back( c );
}

void drealsolver::addGetInterpolants( )
{
  Command c;
  c.command = GET_INTERPOLANTS;
  command_list.push_back( c );
}
