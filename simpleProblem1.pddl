(define (problem simpleProblem1) (:domain domain1)
(:objects
    train1 - sng
    train2 - icm
    train3 - slt
    v1 v2 v3 t0 t1 t2 t3 t4 t5 t6  - trackpart
    track1 track2  - track
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
    (nextTo t0 t4)
    (nextTo t4 t0)
    (free t4)
    (nextTo t4 t5)
    (nextTo t5 t4)
    (free t5)
    (nextTo t5 t6)
    (nextTo t6 t5)
    (free t6)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track1)
    (onTrack t4 track2)
    (onTrack t5 track2)
    (onTrack t6 track2)
    (onPath v1)
    (onPath v2)
    (onPath v3)
)
(:goal (and
    (hasBeenParked train1)
    (hasBeenParked train2)
    (hasBeenParked train3)
)))
