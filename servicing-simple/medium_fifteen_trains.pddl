(define (problem medium_fifteen_trains) (:domain servicing-simple)
(:objects
    train1 - icm
    train2 - slt
    train3 - icm
    train4 - sng
    train5 - virm
    train6 - sng
    train7 - virm
    train8 - icm
    train9 - icm
    train10 - slt
    train11 - icm
    train12 - icm
    train13 - virm
    train14 - virm
    train15 - icm
    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 - trackpart
    track0 track1 track2 track3 track4 track5 track6 track7 track8 track9 track10 track11 track12 - track
    cleaning inspection - service
)
(:init
    ; Initialize trains
    (at train4 v1)
    (needsService train4 inspection)

    (at train1 v2)

    (at train11 v3)
    (needsService train11 inspection)

    (at train15 v4)

    (at train14 v5)

    (at train12 v6)

    (at train8 v7)

    (at train5 v8)

    (at train6 v9)

    (at train2 v10)
    (needsService train2 cleaning)
    (needsService train2 inspection)

    (at train9 v11)
    (needsService train9 cleaning)

    (at train10 v12)
    (needsService train10 inspection)

    (at train7 v13)

    (at train3 v14)

    (at train13 v15)

    ; Set adjacency of path nodes
    (nextTo v1 v2)
    (nextTo v2 v1)
    (nextTo v2 v3)
    (nextTo v3 v2)
    (nextTo v3 v4)
    (nextTo v4 v3)
    (nextTo v4 v5)
    (nextTo v5 v4)
    (nextTo v5 v6)
    (nextTo v6 v5)
    (nextTo v6 v7)
    (nextTo v7 v6)
    (nextTo v7 v8)
    (nextTo v8 v7)
    (nextTo v8 v9)
    (nextTo v9 v8)
    (nextTo v9 v10)
    (nextTo v10 v9)
    (nextTo v10 v11)
    (nextTo v11 v10)
    (nextTo v11 v12)
    (nextTo v12 v11)
    (nextTo v12 v13)
    (nextTo v13 v12)
    (nextTo v13 v14)
    (nextTo v14 v13)
    (nextTo v14 v15)
    (nextTo v15 v14)
    ; Connect path to first non-path node
    (nextTo v1 t0)
    (nextTo t0 v1)
    ; Set adjacency of nodes on the same track
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (nextTo t3 t4)
    (nextTo t4 t3)
    (nextTo t7 t8)
    (nextTo t8 t7)
    (nextTo t9 t10)
    (nextTo t10 t9)
    (nextTo t11 t12)
    (nextTo t12 t11)
    (nextTo t13 t14)
    (nextTo t14 t13)
    (nextTo t14 t15)
    (nextTo t15 t14)
    (nextTo t17 t18)
    (nextTo t18 t17)
    (nextTo t19 t20)
    (nextTo t20 t19)
    (nextTo t22 t23)
    (nextTo t23 t22)
    (nextTo t23 t24)
    (nextTo t24 t23)
    ; Connect adjacent tracks
    (nextTo t1 t2)
    (nextTo t2 t1)
    (nextTo t1 t5)
    (nextTo t5 t1)
    (nextTo t5 t21)
    (nextTo t21 t5)
    (nextTo t5 t6)
    (nextTo t6 t5)
    (nextTo t6 t7)
    (nextTo t7 t6)
    (nextTo t6 t11)
    (nextTo t11 t6)
    (nextTo t8 t9)
    (nextTo t9 t8)
    (nextTo t12 t13)
    (nextTo t13 t12)
    (nextTo t12 t16)
    (nextTo t16 t12)
    (nextTo t16 t17)
    (nextTo t17 t16)
    (nextTo t16 t19)
    (nextTo t19 t16)
    (nextTo t21 t22)
    (nextTo t22 t21)

    ; Set all non-path nodes as free
    (free t0)
    (free t1)
    (free t2)
    (free t3)
    (free t4)
    (free t5)
    (free t6)
    (free t7)
    (free t8)
    (free t9)
    (free t10)
    (free t11)
    (free t12)
    (free t13)
    (free t14)
    (free t15)
    (free t16)
    (free t17)
    (free t18)
    (free t19)
    (free t20)
    (free t21)
    (free t22)
    (free t23)
    (free t24)

    ; Add path nodes to path
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
    (onPath v11)
    (onPath v12)
    (onPath v13)
    (onPath v14)
    (onPath v15)

    ; Assign nodes to tracks
    (onTrack t0 track0)
    (onTrack t1 track0)
    (onTrack t2 track1)
    (onTrack t3 track1)
    (onTrack t4 track1)
    (onTrack t5 track2)
    (onTrack t6 track3)
    (onTrack t7 track4)
    (onTrack t8 track4)
    (onTrack t9 track5)
    (onTrack t10 track5)
    (onTrack t11 track6)
    (onTrack t12 track6)
    (onTrack t13 track7)
    (onTrack t14 track7)
    (onTrack t15 track7)
    (onTrack t16 track8)
    (onTrack t17 track9)
    (onTrack t18 track9)
    (onTrack t19 track10)
    (onTrack t20 track10)
    (onTrack t21 track11)
    (onTrack t22 track12)
    (onTrack t23 track12)
    (onTrack t24 track12)

    ; Set tracks as service ones
    (isServiceTrack track5 cleaning)
    (isServiceTrack track10 cleaning)
    (isServiceTrack track12 inspection)
)
(:goal (and
    (forall (?t - trainunit) (and (hasDeparted ?t) (hasBeenParked ?t)))
    (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
    (at train14 v1)
    (at train6 v2)
    (at train10 v3)
    (at train7 v4)
    (at train5 v5)
    (at train4 v6)
    (at train1 v7)
    (at train9 v8)
    (at train3 v9)
    (at train15 v10)
    (at train12 v11)
    (at train8 v12)
    (at train11 v13)
    (at train2 v14)
    (at train13 v15)
)))
