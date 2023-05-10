(define (problem hanoi01) (:domain hanoi)
(:objects
    t1 t2 t3 - tower
    d1 d2 d3 - disk
)

(:init
    (smaller d1 d2)
    (smaller d1 d3)
    (smaller d2 d3)
    (on-tower d1 t1)
    (on-tower d2 t1)
    (on-tower d3 t1)
)

(:goal (and
    (on-tower d1 t3)
    (on-tower d2 t3)
    (on-tower d3 t3)
    (
        not
        (
            or
            (on-tower d1 t1)
            (on-tower d2 t1)
            (on-tower d3 t1)
            (on-tower d1 t2)
            (on-tower d2 t2)
            (on-tower d3 t2)
        )
    )
    
))
)
