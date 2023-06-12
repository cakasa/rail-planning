(define (problem simpleProblem1) (:domain imprDomain)
(:objects
    train1 - sng
    train2 - icm
    train3 - slt
    train4 - slt
    v1 v2 v3 t0 t1 t2 t3 t4 - trackpart
    track1  - LIFO
)
(:init
    (at train1 v1)
    (next v1 v2)
    (prev v2 v1)
    (at train2 v2)
    (next v2 v3)
    (prev v3 v2)
    (at train3 v3)
    (next v3 v4)
    (prev v4 v3)
    (at train4 v4)
    (next v1 t0)
    (prev t0 v1)
    (switch t0)
    (next t0 t1)
    (prev t1 t0)
    (free t0)
    (free t1)
    (next t1 t2)
    (prev t2 t1)
    (free t2)

    (free t3)
    (next t0 t3)
    (prev t3 t0)
    (free t4)
    (next t3 t4)
    (prev t4 t3)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track1)
    (onPath v1)
    (onPath v2)
    (onPath v3)
)
(:goal (and
    (at train4 v1)
    (at train1 v2)
    (at train3 v3)
    (at train2 v4) 
    (hasBeenParked train1)
    (hasBeenParked train2)
    (hasBeenParked train3)
    (hasBeenParked train4)
)))
