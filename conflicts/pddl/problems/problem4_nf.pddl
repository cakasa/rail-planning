(define (problem problem4) (:domain domain0)
(:objects
    train1 train2 train3 train4 train5 train6  - trainunit
    v1 v2 v3 v4 v5 v6 t0 t1 t4 t2 t3 t5 t6  - trackpart
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
    (nextTo v3 v4)
    (nextTo v4 v3)
    (at train4 v4)
    (nextTo v4 v5)
    (nextTo v5 v4)
    (at train5 v5)
    (nextTo v5 v6)
    (nextTo v6 v5)
    (at train6 v6)
    (nextTo v1 t0)
    (nextTo t0 v1)
    (nextTo t0 t1)
    (nextTo t1 t0)
    (free t0)
    (free t1)
    (nextTo t0 t4)
    (nextTo t4 t0)
    (free t4)
    (nextTo t1 t2)
    (nextTo t2 t1)
    (free t2)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (free t3)
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
)
(:goal (and
    (at train1 v6)
    (at train2 v5)
    (at train3 v4)
    (at train4 v3)
    (at train5 v2)
    (at train6 v1)
    (hasBeenParked train1)
    (hasBeenParked train2)
    (hasBeenParked train3)
    (hasBeenParked train4)
    (hasBeenParked train5)
    (hasBeenParked train6)
)))