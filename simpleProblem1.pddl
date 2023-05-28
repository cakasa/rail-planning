(define (problem simpleProblem1) (:domain domain1)
(:objects
    train1 - sng
    train2 - icm
    train3 - slt
    v1 v2 v3 t0 t1 t2 t3  - trackpart
    track1  - track
)
(:init
    (at train1 v1)
    (nextTo v1 v2)
    (nextTo v2 v1)
    (at train2 v2)
    (nextTo v2 v3)
    (nextTo v3 v2)
    (at train3 v3)
    (nextTo v1 t0)
    (nextTo t0 v1)
    (switch t0)
    (nextTo t0 t1)
    (nextTo t1 t0)
    (free t0)
    (free t1)
    (nextTo t1 t2)
    (nextTo t2 t1)
    (free t2)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (free t3)
    (nextTo t0 t3)
    (nextTo t3 t0)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track1)
    (onPath v1)
    (onPath v2)
    (onPath v3)
)
(:goal (and
    (at train1 v1)
    (at train3 v2)
    (at train2 v3)
    (hasBeenParked train1)
    (hasBeenParked train2)
    (hasBeenParked train3)
)))