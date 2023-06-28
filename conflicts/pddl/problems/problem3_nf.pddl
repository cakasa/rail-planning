(define (problem problem3) (:domain domain0)
(:objects
    train1 train2 train3 train4  - trainunit
    v1 v2 v3 v4 t0 t1 t3 t2 t4  - trackpart
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
    (nextTo v1 t0)
    (nextTo t0 v1)
    (nextTo t0 t1)
    (nextTo t1 t0)
    (free t0)
    (free t1)
    (nextTo t0 t3)
    (nextTo t3 t0)
    (free t3)
    (nextTo t1 t2)
    (nextTo t2 t1)
    (free t2)
    (nextTo t3 t4)
    (nextTo t4 t3)
    (free t4)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track2)
    (onTrack t4 track2)
)
(:goal (and
    (at train1 v4)
    (at train2 v3)
    (at train3 v2)
    (at train4 v1)
    (hasBeenParked train1)
    (hasBeenParked train2)
    (hasBeenParked train3)
    (hasBeenParked train4)
)))
