(define (problem problemgenerated) (:domain domain1)
(:objects
    train1 - sng
    train2 - sng
    train3 - sng
    train4 - icm
    train5 - icm
    train6 - icm
    train7 - virm
    train8 - virm
    train9 - virm
    train10 - slt
    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 - pathpart
    t0 t8 t10 - switch
    t1 t2 t3 t4 t5 t6 t7 t9 t11 t12 t13 t14 t15 - trackpart
    track1 track2 track3 track4 track5 - track
)
(:init
    (at train1 v1)
    (nextTo v2 v1)
    (at train2 v2)
    (nextTo v3 v2)
    (at train3 v3)
    (nextTo v4 v3)
    (at train4 v4)
    (nextTo v5 v4)
    (at train5 v5)
    (nextTo v6 v5)
    (at train6 v6)
    (nextTo v7 v6)
    (at train7 v7)
    (nextTo v8 v7)
    (at train8 v8)
    (nextTo v9 v8)
    (at train9 v9)
    (nextTo v10 v9)
    (at train10 v10)

    (nextTo v1 t0)
    (switch t0)
    (switch t8)
    (switch t10)
    (nextTo t0 t1)
    (free t0)
    (free t1)
    (nextTo t1 t2)
    (free t2)
    (nextTo t0 t3)
    (free t3)
    (nextTo t3 t4)
    (free t4)
    (nextTo t4 t5)
    (free t5)
    (nextTo t0 t6)
    (free t6)
    (nextTo t6 t7)
    (free t7)
    (nextTo t7 t8)
    (free t8)
    (nextTo t8 t9)
    (free t9)
    (nextTo t9 t10)
    (free t10)
    (nextTo t10 t11)
    (free t11)
    (nextTo t11 t12)
    (free t12)
    (nextTo t10 t13)
    (free t13)
    (nextTo t13 t14)
    (free t14)
    (nextTo t8 t15)
    (free t15)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track2)
    (onTrack t4 track2)
    (onTrack t5 track2)
    (onTrack t11 track3)
    (onTrack t12 track3)
    (onTrack t13 track4)
    (onTrack t14 track4)
    (onTrack t15 track5)

    (trackHeader t2 track1)
    (trackHeader t5 track2)
    (trackHeader t12 track3)
    (trackHeader t14 track4)
    (trackHeader t15 track5)

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
    (exists (?t - sng) (at ?t v1))
    (exists (?t - sng) (at ?t v2))
    (exists (?t - sng) (at ?t v3))
    (exists (?t - icm) (at ?t v4))
    (exists (?t - icm) (at ?t v5))
    (exists (?t - icm) (at ?t v6))
    (exists (?t - virm) (at ?t v7))
    (exists (?t - virm) (at ?t v8))
    (exists (?t - virm) (at ?t v9))
    (exists (?t - slt) (at ?t v10))
    (forall (?t - trainunit) (hasBeenParked ?t))
)))
