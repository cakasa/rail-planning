(define (problem multipleStartProblem1) (:domain domain1)
(:objects
    train1 - sng
    train2 - icm
    train3 - slt
    train4 - virm
    train5 - virm
    train6 - sng
    train7 - icm
    train8 - slt
    v1 v2 v3 v4 v5 v6 v7 v8 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16  - trackpart
    track1 track2 track3 track4  - track
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

    (at train5 v5)
    (nextTo t0 v5)
    (nextTo v5 t0)
    (nextTo v6 v5)
    (nextTo v5 v6)
    (at train6 v6)
    (nextTo v6 v7)
    (nextTo v7 v6)
    (at train7 v7)
    (nextTo v7 v8)
    (nextTo v8 v7)
    (at train8 v8)
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
    (nextTo t3 t4)
    (nextTo t4 t3)
    (free t4)
    (nextTo t0 t5)
    (nextTo t5 t0)
    (free t5)
    (nextTo t5 t6)
    (nextTo t6 t5)
    (free t6)
    (nextTo t6 t7)
    (nextTo t7 t6)
    (free t7)
    (nextTo t7 t8)
    (nextTo t8 t7)
    (free t8)
    (nextTo t0 t9)
    (nextTo t9 t0)
    (free t9)
    (nextTo t9 t10)
    (nextTo t10 t9)
    (free t10)
    (nextTo t10 t11)
    (nextTo t11 t10)
    (free t11)
    (nextTo t11 t12)
    (nextTo t12 t11)
    (free t12)
    (nextTo t0 t13)
    (nextTo t13 t0)
    (free t13)
    (nextTo t13 t14)
    (nextTo t14 t13)
    (free t14)
    (nextTo t14 t15)
    (nextTo t15 t14)
    (free t15)
    (nextTo t15 t16)
    (nextTo t16 t15)
    (free t16)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track1)
    (onTrack t4 track1)
    (onTrack t5 track2)
    (onTrack t6 track2)
    (onTrack t7 track2)
    (onTrack t8 track2)
    (onTrack t9 track3)
    (onTrack t10 track3)
    (onTrack t11 track3)
    (onTrack t12 track3)
    (onTrack t13 track4)
    (onTrack t14 track4)
    (onTrack t15 track4)
    (onTrack t16 track4)
    (onPath v1)
    (onPath v2)
    (onPath v3)
    (onPath v4)
    (onPath v5)
    (onPath v6)
    (onPath v7)
    (onPath v8)
    (onPath v9)
    (onPath v10)
)
(:goal (and
    (at train1 v8)   
    (at train2 v7)
    (at train3 v6)
    (at train4 v5)
    (at train5 v1)
    (at train6 v2)
    (at train7 v3)   
    (at train8 v4)
    (hasBeenParked train1)
    (hasBeenParked train2)
    (hasBeenParked train3)
    (hasBeenParked train4)
    (hasBeenParked train5)
    (hasBeenParked train6)
    (hasBeenParked train7)
    (hasBeenParked train8)
)))