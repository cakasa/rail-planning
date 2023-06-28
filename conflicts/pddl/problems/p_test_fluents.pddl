(define (problem problem_test_fluents) (:domain domain_test_fluents)
(:objects
  train1 - trainunit
  v1 v2 v3 - trackpart
)
(:init
   (at train1 v1)
   (nextTo v1 v2)
   (nextTo v2 v3)
   (= (maxMoves train1) 1)
)
(:goal (and
   (at train1 v2)
)))
