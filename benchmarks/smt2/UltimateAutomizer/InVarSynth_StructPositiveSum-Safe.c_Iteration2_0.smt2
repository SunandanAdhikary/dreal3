(set-logic QF_NRA)
(set-info :source |
SMT script generated by Ultimate Automizer [1,2].
Ultimate Automizer is a software verifier for C programs that implements an
automata-based approach [3].
The commands in this SMT scripts are used for a constraint-based synthesis
of invariants [4].

2016-04-30, Matthias Heizmann (heizmann@informatik.uni-freiburg.de)


[1] http://http://ultimate.informatik.uni-freiburg.de/automizer/
[2] Matthias Heizmann, Daniel Dietsch, Marius Greitschus, Jan Leike,
Betim Musa, Claus Schätzle, Andreas Podelski: Ultimate Automizer with
Two-track Proofs - (Competition Contribution). TACAS 2016: 950-953
[3] Matthias Heizmann, Jochen Hoenicke, Andreas Podelski: Software Model
Checking for People Who Love Automata. CAV 2013:36-52
[4] Michael Colon, Sriram Sankaranarayanan, Henny Sipma: Linear Invariant
Generation Using Non-linear Constraint Solving. CAV 2003: 420-432

|)
(set-info :smt-lib-version 2.5)
(set-info :category "industrial")
(set-info :status sat)
(declare-fun liipp_0_c () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_0__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_0__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_1_c () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_1__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_1__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_2_c () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_2__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_2__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_3_c () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_3__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_3__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_4_c () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_4__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_4__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_5_c () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_5__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_5__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_6_c () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_6__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_6__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_7_c () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#t~nondet0| () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#t~nondet1| () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~a~2.fst () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#res| () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#t~post3| () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#t~post2| () Real)
(declare-fun liipp_7__ULTIMATE.start_main_~a~2.snd () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#t~post5| () Real)
(declare-fun |liipp_7__ULTIMATE.start_main_#t~post4| () Real)
(declare-fun liipp_8_replace_0 () Real)
(declare-fun liipp_8_replace_1 () Real)
(declare-fun liipp_8_replace_2 () Real)
(declare-fun liipp_8_replace_3 () Real)
(declare-fun liipp_8_replace_4 () Real)
(declare-fun liipp_8_replace_5 () Real)
(declare-fun liipp_8_replace_6 () Real)
(declare-fun liipp_8_replace_7 () Real)
(declare-fun liipp_8_replace_8 () Real)
(declare-fun liipp_9_replace_0 () Real)
(declare-fun liipp_9_replace_1 () Real)
(declare-fun liipp_9_replace_2 () Real)
(declare-fun liipp_9_replace_3 () Real)
(declare-fun liipp_9_replace_4 () Real)
(declare-fun liipp_9_replace_5 () Real)
(declare-fun liipp_9_replace_6 () Real)
(declare-fun liipp_9_replace_7 () Real)
(declare-fun liipp_9_replace_8 () Real)
(declare-fun motzkin_2708_0 () Real)
(declare-fun motzkin_2708_1 () Real)
(declare-fun motzkin_2708_2 () Real)
(declare-fun motzkin_2708_3 () Real)
(declare-fun motzkin_2708_4 () Real)
(declare-fun motzkin_2709_0 () Real)
(declare-fun motzkin_2709_1 () Real)
(declare-fun motzkin_2709_2 () Real)
(declare-fun motzkin_2709_3 () Real)
(declare-fun motzkin_2709_4 () Real)
(assert (and (>= motzkin_2708_0 0.0) (>= motzkin_2708_1 0.0) (>= motzkin_2708_2 0.0) (>= motzkin_2708_3 0.0) (>= motzkin_2708_4 0.0) (= (+ motzkin_2708_0 (* motzkin_2708_1 (- 1.0)) (* motzkin_2708_4 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ motzkin_2708_2 (* motzkin_2708_3 (- 1.0)) (* motzkin_2708_4 (+ (* (- 1.0) liipp_0__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#t~nondet0|) 0.0)) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#t~nondet1|) 0.0)) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#res|) 0.0)) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#t~post3|) 0.0)) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#t~post2|) 0.0)) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#t~post5|) 0.0)) 0.0) (= (* motzkin_2708_4 (+ (* (- 1.0) |liipp_0__ULTIMATE.start_main_#t~post4|) 0.0)) 0.0) (<= (+ (* motzkin_2708_0 (- 23.0)) (* motzkin_2708_1 23.0) (* motzkin_2708_2 (- 42.0)) (* motzkin_2708_3 42.0) (* motzkin_2708_4 (+ (* (- 1.0) liipp_0_c) 0.0))) 0.0) (or (< (+ (* motzkin_2708_0 (- 23.0)) (* motzkin_2708_1 23.0) (* motzkin_2708_2 (- 42.0)) (* motzkin_2708_3 42.0) (* motzkin_2708_4 (+ (* (- 1.0) liipp_0_c) 0.0))) 0.0) (> 0.0 0.0)) (>= motzkin_2709_0 0.0) (>= motzkin_2709_1 0.0) (>= motzkin_2709_2 0.0) (>= motzkin_2709_3 0.0) (>= motzkin_2709_4 0.0) (= (+ motzkin_2709_0 (* motzkin_2709_1 (- 1.0)) (* motzkin_2709_4 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ motzkin_2709_2 (* motzkin_2709_3 (- 1.0)) (* motzkin_2709_4 (+ (* (- 1.0) liipp_1__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#t~nondet0|) 0.0)) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#t~nondet1|) 0.0)) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#res|) 0.0)) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#t~post3|) 0.0)) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#t~post2|) 0.0)) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#t~post5|) 0.0)) 0.0) (= (* motzkin_2709_4 (+ (* (- 1.0) |liipp_1__ULTIMATE.start_main_#t~post4|) 0.0)) 0.0) (<= (+ (* motzkin_2709_0 (- 23.0)) (* motzkin_2709_1 23.0) (* motzkin_2709_2 (- 42.0)) (* motzkin_2709_3 42.0) (* motzkin_2709_4 (+ (* (- 1.0) liipp_1_c) 0.0))) 0.0) (or (< (+ (* motzkin_2709_0 (- 23.0)) (* motzkin_2709_1 23.0) (* motzkin_2709_2 (- 42.0)) (* motzkin_2709_3 42.0)) 0.0) (> motzkin_2709_4 0.0))))
(declare-fun liipp_11_replace_0 () Real)
(declare-fun liipp_11_replace_1 () Real)
(declare-fun liipp_11_replace_2 () Real)
(declare-fun liipp_11_replace_3 () Real)
(declare-fun liipp_11_replace_4 () Real)
(declare-fun liipp_11_replace_5 () Real)
(declare-fun liipp_11_replace_6 () Real)
(declare-fun liipp_11_replace_7 () Real)
(declare-fun liipp_11_replace_8 () Real)
(declare-fun motzkin_2710_0 () Real)
(declare-fun motzkin_2710_1 () Real)
(declare-fun motzkin_2710_2 () Real)
(declare-fun motzkin_2710_3 () Real)
(declare-fun motzkin_2711_0 () Real)
(declare-fun motzkin_2711_1 () Real)
(declare-fun motzkin_2711_2 () Real)
(declare-fun motzkin_2711_3 () Real)
(assert (and (>= motzkin_2710_0 0.0) (>= motzkin_2710_1 0.0) (>= motzkin_2710_2 0.0) (>= motzkin_2710_3 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2710_2 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2710_3 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) liipp_4__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2710_2 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2710_3 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2710_1 (+ (* (- 1.0) |liipp_4__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2710_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2710_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2710_1 (+ (* (- 1.0) liipp_4_c) 0.0)) (* motzkin_2710_2 (+ (* 1.0 liipp_0_c) 0.0)) (* motzkin_2710_3 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (or (< (+ (* motzkin_2710_1 (+ (* (- 1.0) liipp_4_c) 0.0)) (* motzkin_2710_3 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (> motzkin_2710_2 0.0)) (>= motzkin_2711_0 0.0) (>= motzkin_2711_1 0.0) (>= motzkin_2711_2 0.0) (>= motzkin_2711_3 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2711_2 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2711_3 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) liipp_5__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2711_2 (+ (* 1.0 liipp_0__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2711_3 (+ (* 1.0 liipp_1__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2711_1 (+ (* (- 1.0) |liipp_5__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2711_2 (+ (* 1.0 |liipp_0__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2711_3 (+ (* 1.0 |liipp_1__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2711_1 (+ (* (- 1.0) liipp_5_c) 0.0)) (* motzkin_2711_2 (+ (* 1.0 liipp_0_c) 0.0)) (* motzkin_2711_3 (+ (* 1.0 liipp_1_c) 0.0))) 0.0) (or (< (* motzkin_2711_3 (+ (* 1.0 liipp_1_c) 0.0)) 0.0) (> (+ motzkin_2711_1 motzkin_2711_2) 0.0))))
(declare-fun liipp_12_replace_0 () Real)
(declare-fun liipp_12_replace_1 () Real)
(declare-fun liipp_12_replace_2 () Real)
(declare-fun liipp_12_replace_3 () Real)
(declare-fun liipp_12_replace_4 () Real)
(declare-fun liipp_12_replace_5 () Real)
(declare-fun liipp_12_replace_6 () Real)
(declare-fun liipp_12_replace_7 () Real)
(declare-fun motzkin_2712_0 () Real)
(declare-fun motzkin_2712_1 () Real)
(declare-fun motzkin_2712_2 () Real)
(declare-fun motzkin_2712_3 () Real)
(declare-fun motzkin_2712_4 () Real)
(declare-fun motzkin_2713_0 () Real)
(declare-fun motzkin_2713_1 () Real)
(declare-fun motzkin_2713_2 () Real)
(declare-fun motzkin_2713_3 () Real)
(declare-fun motzkin_2713_4 () Real)
(assert (and (>= motzkin_2712_0 0.0) (>= motzkin_2712_1 0.0) (>= motzkin_2712_2 0.0) (>= motzkin_2712_3 0.0) (>= motzkin_2712_4 0.0) (= (+ motzkin_2712_0 (* motzkin_2712_1 (- 1.0)) (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2712_3 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2712_4 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) liipp_6__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2712_3 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2712_4 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2712_2 (+ (* (- 1.0) |liipp_6__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2712_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2712_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2712_0 2147483648.0) (* motzkin_2712_1 2147483647.0) (* motzkin_2712_2 (+ (* (- 1.0) liipp_6_c) 0.0)) (* motzkin_2712_3 (+ (* 1.0 liipp_4_c) 0.0)) (* motzkin_2712_4 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (or (< (+ (* motzkin_2712_0 2147483648.0) (* motzkin_2712_1 2147483647.0) (* motzkin_2712_2 (+ (* (- 1.0) liipp_6_c) 0.0)) (* motzkin_2712_4 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (> motzkin_2712_3 0.0)) (>= motzkin_2713_0 0.0) (>= motzkin_2713_1 0.0) (>= motzkin_2713_2 0.0) (>= motzkin_2713_3 0.0) (>= motzkin_2713_4 0.0) (= (+ motzkin_2713_0 (* motzkin_2713_1 (- 1.0)) (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2713_3 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2713_4 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) liipp_7__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2713_3 (+ (* 1.0 liipp_4__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2713_4 (+ (* 1.0 liipp_5__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2713_2 (+ (* (- 1.0) |liipp_7__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2713_3 (+ (* 1.0 |liipp_4__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2713_4 (+ (* 1.0 |liipp_5__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2713_0 2147483648.0) (* motzkin_2713_1 2147483647.0) (* motzkin_2713_2 (+ (* (- 1.0) liipp_7_c) 0.0)) (* motzkin_2713_3 (+ (* 1.0 liipp_4_c) 0.0)) (* motzkin_2713_4 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (or (< (+ (* motzkin_2713_0 2147483648.0) (* motzkin_2713_1 2147483647.0) (* motzkin_2713_4 (+ (* 1.0 liipp_5_c) 0.0))) 0.0) (> (+ motzkin_2713_2 motzkin_2713_3) 0.0))))
(declare-fun liipp_13_replace_0 () Real)
(declare-fun liipp_13_replace_1 () Real)
(declare-fun liipp_13_replace_2 () Real)
(declare-fun liipp_13_replace_3 () Real)
(declare-fun liipp_13_replace_4 () Real)
(declare-fun liipp_13_replace_5 () Real)
(declare-fun liipp_13_replace_6 () Real)
(declare-fun liipp_13_replace_7 () Real)
(declare-fun motzkin_2714_0 () Real)
(declare-fun motzkin_2714_1 () Real)
(declare-fun motzkin_2714_2 () Real)
(declare-fun motzkin_2714_3 () Real)
(declare-fun motzkin_2714_4 () Real)
(declare-fun motzkin_2715_0 () Real)
(declare-fun motzkin_2715_1 () Real)
(declare-fun motzkin_2715_2 () Real)
(declare-fun motzkin_2715_3 () Real)
(declare-fun motzkin_2715_4 () Real)
(assert (and (>= motzkin_2714_0 0.0) (>= motzkin_2714_1 0.0) (>= motzkin_2714_2 0.0) (>= motzkin_2714_3 0.0) (>= motzkin_2714_4 0.0) (= (+ motzkin_2714_0 (* motzkin_2714_1 (- 1.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#t~nondet0|) 0.0)) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2714_3 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2714_4 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) liipp_2__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2714_3 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2714_4 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2714_2 (+ (* (- 1.0) |liipp_2__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2714_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2714_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2714_2 (+ (* (- 1.0) liipp_2_c) 0.0)) (* motzkin_2714_3 (+ (* 1.0 liipp_6_c) 0.0)) (* motzkin_2714_4 (+ (* 1.0 liipp_7_c) 0.0))) 0.0) (or (< (+ (* motzkin_2714_2 (+ (* (- 1.0) liipp_2_c) 0.0)) (* motzkin_2714_4 (+ (* 1.0 liipp_7_c) 0.0))) 0.0) (> motzkin_2714_3 0.0)) (>= motzkin_2715_0 0.0) (>= motzkin_2715_1 0.0) (>= motzkin_2715_2 0.0) (>= motzkin_2715_3 0.0) (>= motzkin_2715_4 0.0) (= (+ motzkin_2715_0 (* motzkin_2715_1 (- 1.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#t~nondet0|) 0.0)) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2715_3 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2715_4 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) liipp_3__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2715_3 (+ (* 1.0 liipp_6__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2715_4 (+ (* 1.0 liipp_7__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2715_2 (+ (* (- 1.0) |liipp_3__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2715_3 (+ (* 1.0 |liipp_6__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2715_4 (+ (* 1.0 |liipp_7__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2715_2 (+ (* (- 1.0) liipp_3_c) 0.0)) (* motzkin_2715_3 (+ (* 1.0 liipp_6_c) 0.0)) (* motzkin_2715_4 (+ (* 1.0 liipp_7_c) 0.0))) 0.0) (or (< (* motzkin_2715_4 (+ (* 1.0 liipp_7_c) 0.0)) 0.0) (> (+ motzkin_2715_2 motzkin_2715_3) 0.0))))
(declare-fun liipp_14_replace_0 () Real)
(declare-fun liipp_14_replace_1 () Real)
(declare-fun liipp_14_replace_2 () Real)
(declare-fun liipp_14_replace_3 () Real)
(declare-fun liipp_14_replace_4 () Real)
(declare-fun liipp_14_replace_5 () Real)
(declare-fun liipp_14_replace_6 () Real)
(declare-fun motzkin_2716_0 () Real)
(declare-fun motzkin_2716_1 () Real)
(declare-fun motzkin_2716_2 () Real)
(assert (and (>= motzkin_2716_0 0.0) (>= motzkin_2716_1 0.0) (>= motzkin_2716_2 0.0) (= (+ (* motzkin_2716_0 (- 1.0)) (* motzkin_2716_1 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~a~2.snd) 0.0)) (* motzkin_2716_2 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~a~2.snd) 0.0))) 0.0) (= (+ (* motzkin_2716_0 (- 1.0)) (* motzkin_2716_1 (+ (* 1.0 liipp_2__ULTIMATE.start_main_~a~2.fst) 0.0)) (* motzkin_2716_2 (+ (* 1.0 liipp_3__ULTIMATE.start_main_~a~2.fst) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#t~nondet0|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#t~nondet0|) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#t~nondet1|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#t~nondet1|) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#res|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#res|) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#t~post3|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#t~post3|) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#t~post2|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#t~post2|) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#t~post5|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#t~post5|) 0.0))) 0.0) (= (+ (* motzkin_2716_1 (+ (* 1.0 |liipp_2__ULTIMATE.start_main_#t~post4|) 0.0)) (* motzkin_2716_2 (+ (* 1.0 |liipp_3__ULTIMATE.start_main_#t~post4|) 0.0))) 0.0) (<= (+ (* motzkin_2716_0 (- 1.0)) (* motzkin_2716_1 (+ (* 1.0 liipp_2_c) 0.0)) (* motzkin_2716_2 (+ (* 1.0 liipp_3_c) 0.0))) 0.0) (or (< (+ (* motzkin_2716_0 (- 1.0)) (* motzkin_2716_2 (+ (* 1.0 liipp_3_c) 0.0))) 0.0) (> motzkin_2716_1 0.0))))
(assert (= |liipp_1__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_7__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_4__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_0__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_1__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#t~post5| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#t~post3| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#t~post2| 0))
(assert (= |liipp_5__ULTIMATE.start_main_#t~post4| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#t~nondet0| 0))
(assert (= |liipp_6__ULTIMATE.start_main_#t~nondet1| 0))
(assert (= |liipp_2__ULTIMATE.start_main_#res| 0))
(assert (= |liipp_3__ULTIMATE.start_main_#res| 0))
(assert (or (= liipp_1__ULTIMATE.start_main_~a~2.fst 0) (= liipp_4__ULTIMATE.start_main_~a~2.fst 0) (= liipp_0_c 0) (= liipp_6_c 0)))
(assert (or (= liipp_2__ULTIMATE.start_main_~a~2.snd 0) (= liipp_1__ULTIMATE.start_main_~a~2.fst 0) (= liipp_3__ULTIMATE.start_main_~a~2.fst 0) (= liipp_1__ULTIMATE.start_main_~a~2.snd 0)))
(assert (or (= liipp_6__ULTIMATE.start_main_~a~2.fst 0) (= liipp_5__ULTIMATE.start_main_~a~2.fst 0) (= liipp_0__ULTIMATE.start_main_~a~2.snd 0) (= liipp_1_c 0)))
(assert (or (= liipp_0__ULTIMATE.start_main_~a~2.fst 0) (= liipp_3_c 0) (= liipp_2__ULTIMATE.start_main_~a~2.snd 0) (= liipp_5_c 0)))
(assert (or (= liipp_3__ULTIMATE.start_main_~a~2.snd 0) (= liipp_2_c 0) (= liipp_4_c 0) (= liipp_4__ULTIMATE.start_main_~a~2.snd 0)))
(assert (or (= liipp_1_c 0) (= liipp_3__ULTIMATE.start_main_~a~2.snd 0) (= liipp_6__ULTIMATE.start_main_~a~2.snd 0) (= liipp_7__ULTIMATE.start_main_~a~2.snd 0)))
(assert (or (= liipp_0_c 0) (= liipp_7__ULTIMATE.start_main_~a~2.fst 0) (= liipp_1__ULTIMATE.start_main_~a~2.snd 0) (= liipp_5__ULTIMATE.start_main_~a~2.snd 0)))
(assert (or (= liipp_0__ULTIMATE.start_main_~a~2.fst 0) (= liipp_3__ULTIMATE.start_main_~a~2.fst 0) (= liipp_4_c 0) (= liipp_1__ULTIMATE.start_main_~a~2.snd 0)))
(assert (or (= liipp_7__ULTIMATE.start_main_~a~2.fst 0) (= liipp_4_c 0) (= liipp_0__ULTIMATE.start_main_~a~2.snd 0) (= liipp_1__ULTIMATE.start_main_~a~2.fst 0)))
(assert (or (= liipp_5__ULTIMATE.start_main_~a~2.fst 0) (= liipp_1_c 0) (= liipp_7_c 0) (= liipp_0__ULTIMATE.start_main_~a~2.fst 0)))
(check-sat)
(exit)