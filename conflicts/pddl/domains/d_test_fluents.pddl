(define (domain domain_test_fluents)

(:requirements :adl :fluents)

(:types
    trackpart
    track
    trainunit
)

(:predicates 
    (at ?x - trainunit ?y - trackpart)
    (nextTo ?x ?y - trackpart) ;track part x next to other track part y
)

(:functions
    (maxMoves ?t - trainunit)
)

(:action move
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (nextTo ?from ?to) (> (maxMoves ?train) 0))
    :effect (and (at ?train ?to) (not (at ?train ?from)) (decrease (maxMoves ?train) 1)) 
)
)