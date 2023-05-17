(define (problem problem04) (:domain servicing-no-fluents)
(:objects
    train1 - slt
    train2 - sng
    v1 v2 v3 v4 v5 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 - trackpart
    track0 track1 track2 track3 track4 track5 track6 track7 track8 track9 track10 - track
    inspection cleaning - service
)
(:init
    ; Initialize trains
    (at train1 v1)
    (at train1 v2)
    (at train1 v3)
    (beginsAt train1 v1)
    (endsAt train1 v3)
    (needsService train1 cleaning)

    (at train2 v4)
    (at train2 v5)
    (beginsAt train2 v4)
    (endsAt train2 v5)
    (needsService train2 inspection)

    ; Set adjacency of path nodes
    (nextTo v1 v2)
    (nextTo v2 v1)
    (nextTo v2 v3)
    (nextTo v3 v2)
    (nextTo v3 v4)
    (nextTo v4 v3)
    (nextTo v4 v5)
    (nextTo v5 v4)
    ; Connect path to first non-path node
    (nextTo v1 t0)
    (nextTo t0 v1)
    ; Set adjacency of nodes on the same track
    (nextTo t1 t2)
    (nextTo t2 t1)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (nextTo t3 t4)
    (nextTo t4 t3)
    (nextTo t5 t6)
    (nextTo t6 t5)
    (nextTo t6 t7)
    (nextTo t7 t6)
    (nextTo t7 t8)
    (nextTo t8 t7)
    (nextTo t9 t10)
    (nextTo t10 t9)
    (nextTo t10 t11)
    (nextTo t11 t10)
    (nextTo t11 t12)
    (nextTo t12 t11)
    (nextTo t13 t14)
    (nextTo t14 t13)
    (nextTo t14 t15)
    (nextTo t15 t14)
    (nextTo t15 t16)
    (nextTo t16 t15)
    (nextTo t17 t18)
    (nextTo t18 t17)
    (nextTo t18 t19)
    (nextTo t19 t18)
    (nextTo t19 t20)
    (nextTo t20 t19)
    (nextTo t21 t22)
    (nextTo t22 t21)
    (nextTo t22 t23)
    (nextTo t23 t22)
    (nextTo t23 t24)
    (nextTo t24 t23)
    (nextTo t25 t26)
    (nextTo t26 t25)
    (nextTo t26 t27)
    (nextTo t27 t26)
    (nextTo t27 t28)
    (nextTo t28 t27)
    (nextTo t29 t30)
    (nextTo t30 t29)
    (nextTo t30 t31)
    (nextTo t31 t30)
    (nextTo t31 t32)
    (nextTo t32 t31)
    (nextTo t33 t34)
    (nextTo t34 t33)
    (nextTo t34 t35)
    (nextTo t35 t34)
    (nextTo t35 t36)
    (nextTo t36 t35)
    (nextTo t37 t38)
    (nextTo t38 t37)
    (nextTo t38 t39)
    (nextTo t39 t38)
    (nextTo t39 t40)
    (nextTo t40 t39)
    ; Connect adjacent tracks
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t0 t5)
    (nextTo t5 t0)
    (nextTo t8 t9)
    (nextTo t9 t8)
    (nextTo t8 t13)
    (nextTo t13 t8)
    (nextTo t16 t17)
    (nextTo t17 t16)
    (nextTo t16 t21)
    (nextTo t21 t16)
    (nextTo t16 t25)
    (nextTo t25 t16)
    (nextTo t16 t29)
    (nextTo t29 t16)
    (nextTo t16 t33)
    (nextTo t33 t16)
    (nextTo t16 t37)
    (nextTo t37 t16)

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
    (free t25)
    (free t26)
    (free t27)
    (free t28)
    (free t29)
    (free t30)
    (free t31)
    (free t32)
    (free t33)
    (free t34)
    (free t35)
    (free t36)
    (free t37)
    (free t38)
    (free t39)
    (free t40)

    ; Add path nodes to path
    (onPath v1)
    (onPath v2)
    (onPath v3)
    (onPath v4)
    (onPath v5)

    ; Assign nodes to tracks
    (onTrack t0 track0)
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
    (onTrack t17 track5)
    (onTrack t18 track5)
    (onTrack t19 track5)
    (onTrack t20 track5)
    (onTrack t21 track6)
    (onTrack t22 track6)
    (onTrack t23 track6)
    (onTrack t24 track6)
    (onTrack t25 track7)
    (onTrack t26 track7)
    (onTrack t27 track7)
    (onTrack t28 track7)
    (onTrack t29 track8)
    (onTrack t30 track8)
    (onTrack t31 track8)
    (onTrack t32 track8)
    (onTrack t33 track9)
    (onTrack t34 track9)
    (onTrack t35 track9)
    (onTrack t36 track9)
    (onTrack t37 track10)
    (onTrack t38 track10)
    (onTrack t39 track10)
    (onTrack t40 track10)

    ; Set tracks as service ones
    (isServiceTrack track1 cleaning)
    (isServiceTrack track3 inspection)
)
(:goal (and
    (forall (?t - trainunit) (and (hasDeparted ?t) (hasBeenParked ?t)))
    (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
    (at train2 v1)
    (at train2 v2)
    (beginsAt train2 v2)
    (endsAt train2 v1)
    (at train1 v3)
    (at train1 v4)
    (at train1 v5)
    (beginsAt train1 v5)
    (endsAt train1 v3)
)))
