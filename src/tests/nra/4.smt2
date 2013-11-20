(set-logic QF_NRA)
(set-info :precision 0.001)
(declare-fun x () Real)
(declare-fun y () Real)
(assert (< 0.0 x))
(assert (< x 2.0))
(assert (< 0.0 y))
(assert (< y 2.0))
(assert
        (and
                (= y (cos x))
		(= x (tan y))
        )
)
(check-sat)
(exit)