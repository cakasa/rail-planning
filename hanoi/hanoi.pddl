(
    define (domain hanoi)

    ;remove requirements that are not needed
    (:requirements :adl :fluents)

    (:types 
        disk
        tower
    )

    ; un-comment following line if constants are needed
    ;(:constants )

    (:predicates 
        (smaller ?d1 ?d2 - disk)
        (on-tower ?d - disk ?t - tower)
    )

    ;define actions here

    (:action move
        :parameters (?d - disk ?from ?to - tower)
        :precondition (and
            (not (= ?from ?to))
            (on-tower ?d ?from)
            (forall (?d2 - disk) (or
                (= ?d ?d2)
                (not (on-tower ?d2 ?from))
                (smaller ?d ?d2)
            ))
            (forall (?d2 - disk) (or
                (= ?d ?d2)
                (not (on-tower ?d2 ?to))
                (smaller ?d ?d2)
            ))
        )
        
        :effect (and
            (not (on-tower ?d ?from))
            (on-tower ?d ?to)
        )
    )
)