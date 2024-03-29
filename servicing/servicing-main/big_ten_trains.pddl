(define (problem big_ten_trains) (:domain servicing-simple)
(:objects
    train1 - icm
    train2 - icm
    train3 - virm
    train4 - sng
    train5 - slt
    train6 - virm
    train7 - slt
    train8 - slt
    train9 - icm
    train10 - icm
    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 - trackpart
    track0 track1 track2 track3 track4 track5 track6 track7 track8 track9 track10 track11 track12 track13 track14 track15 track16 track17 track18 track19 track20 track21 track22 track23 track24 track25 track26 track27 track28 track29 track30 track31 track32 track33 track34 track35 track36 track37 - track
    inspection washing cleaning - service
)
(:init
    ; Initialize trains
    (at train5 v1)
    (needsService train5 inspection)

    (at train1 v2)

    (at train6 v3)
    (needsService train6 cleaning)

    (at train2 v4)

    (at train4 v5)

    (at train9 v6)

    (at train8 v7)

    (at train7 v8)

    (at train3 v9)

    (at train10 v10)
    (needsService train10 inspection)

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
    ; Connect path to first non-path node
    (nextTo v1 t0)
    (nextTo t0 v1)
    ; Set adjacency of nodes on the same track
    (nextTo t7 t8)
    (nextTo t8 t7)
    (nextTo t9 t10)
    (nextTo t10 t9)
    (nextTo t10 t11)
    (nextTo t11 t10)
    (nextTo t13 t14)
    (nextTo t14 t13)
    (nextTo t15 t16)
    (nextTo t16 t15)
    (nextTo t17 t18)
    (nextTo t18 t17)
    (nextTo t19 t20)
    (nextTo t20 t19)
    (nextTo t21 t22)
    (nextTo t22 t21)
    (nextTo t23 t24)
    (nextTo t24 t23)
    (nextTo t30 t31)
    (nextTo t31 t30)
    (nextTo t34 t35)
    (nextTo t35 t34)
    (nextTo t36 t37)
    (nextTo t37 t36)
    (nextTo t38 t39)
    (nextTo t39 t38)
    (nextTo t40 t41)
    (nextTo t41 t40)
    (nextTo t42 t43)
    (nextTo t43 t42)
    (nextTo t44 t45)
    (nextTo t45 t44)
    (nextTo t45 t46)
    (nextTo t46 t45)
    (nextTo t47 t48)
    (nextTo t48 t47)
    (nextTo t49 t50)
    (nextTo t50 t49)
    ; Connect adjacent tracks
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t0 t13)
    (nextTo t13 t0)
    (nextTo t1 t15)
    (nextTo t15 t1)
    (nextTo t1 t2)
    (nextTo t2 t1)
    (nextTo t2 t17)
    (nextTo t17 t2)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (nextTo t3 t4)
    (nextTo t4 t3)
    (nextTo t3 t19)
    (nextTo t19 t3)
    (nextTo t4 t5)
    (nextTo t5 t4)
    (nextTo t4 t21)
    (nextTo t21 t4)
    (nextTo t5 t23)
    (nextTo t23 t5)
    (nextTo t5 t6)
    (nextTo t6 t5)
    (nextTo t6 t7)
    (nextTo t7 t6)
    (nextTo t6 t29)
    (nextTo t29 t6)
    (nextTo t8 t9)
    (nextTo t9 t8)
    (nextTo t11 t12)
    (nextTo t12 t11)
    (nextTo t24 t26)
    (nextTo t26 t24)
    (nextTo t24 t25)
    (nextTo t25 t24)
    (nextTo t26 t27)
    (nextTo t27 t26)
    (nextTo t26 t28)
    (nextTo t28 t26)
    (nextTo t25 t55)
    (nextTo t55 t25)
    (nextTo t25 t56)
    (nextTo t56 t25)
    (nextTo t28 t55)
    (nextTo t55 t28)
    (nextTo t28 t56)
    (nextTo t56 t28)
    (nextTo t27 t53)
    (nextTo t53 t27)
    (nextTo t27 t54)
    (nextTo t54 t27)
    (nextTo t29 t54)
    (nextTo t54 t29)
    (nextTo t29 t53)
    (nextTo t53 t29)
    (nextTo t53 t47)
    (nextTo t47 t53)
    (nextTo t48 t42)
    (nextTo t42 t48)
    (nextTo t53 t49)
    (nextTo t49 t53)
    (nextTo t50 t42)
    (nextTo t42 t50)
    (nextTo t55 t47)
    (nextTo t47 t55)
    (nextTo t55 t49)
    (nextTo t49 t55)
    (nextTo t43 t44)
    (nextTo t44 t43)
    (nextTo t16 t33)
    (nextTo t33 t16)
    (nextTo t16 t52)
    (nextTo t52 t16)
    (nextTo t32 t52)
    (nextTo t52 t32)
    (nextTo t32 t33)
    (nextTo t33 t32)
    (nextTo t18 t30)
    (nextTo t30 t18)
    (nextTo t31 t32)
    (nextTo t32 t31)
    (nextTo t20 t30)
    (nextTo t30 t20)
    (nextTo t22 t32)
    (nextTo t32 t22)
    (nextTo t33 t34)
    (nextTo t34 t33)
    (nextTo t52 t34)
    (nextTo t34 t52)
    (nextTo t51 t52)
    (nextTo t52 t51)
    (nextTo t56 t51)
    (nextTo t51 t56)
    (nextTo t51 t38)
    (nextTo t38 t51)
    (nextTo t37 t40)
    (nextTo t40 t37)
    (nextTo t39 t40)
    (nextTo t40 t39)
    (nextTo t41 t44)
    (nextTo t44 t41)
    (nextTo t54 t51)
    (nextTo t51 t54)

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
    (free t41)
    (free t42)
    (free t43)
    (free t44)
    (free t45)
    (free t46)
    (free t47)
    (free t48)
    (free t49)
    (free t50)
    (free t51)
    (free t52)
    (free t53)
    (free t54)
    (free t55)
    (free t56)

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

    ; Assign nodes to tracks
    (onTrack t0 track0)
    (onTrack t1 track1)
    (onTrack t2 track2)
    (onTrack t3 track3)
    (onTrack t4 track4)
    (onTrack t5 track5)
    (onTrack t6 track6)
    (onTrack t7 track7)
    (onTrack t8 track7)
    (onTrack t9 track8)
    (onTrack t10 track8)
    (onTrack t11 track8)
    (onTrack t12 track9)
    (onTrack t13 track10)
    (onTrack t14 track10)
    (onTrack t15 track11)
    (onTrack t16 track11)
    (onTrack t17 track12)
    (onTrack t18 track12)
    (onTrack t19 track13)
    (onTrack t20 track13)
    (onTrack t21 track14)
    (onTrack t22 track14)
    (onTrack t23 track15)
    (onTrack t24 track15)
    (onTrack t25 track16)
    (onTrack t26 track17)
    (onTrack t27 track18)
    (onTrack t28 track19)
    (onTrack t29 track20)
    (onTrack t30 track21)
    (onTrack t31 track21)
    (onTrack t32 track22)
    (onTrack t33 track23)
    (onTrack t34 track24)
    (onTrack t35 track24)
    (onTrack t36 track25)
    (onTrack t37 track25)
    (onTrack t38 track26)
    (onTrack t39 track26)
    (onTrack t40 track27)
    (onTrack t41 track27)
    (onTrack t42 track28)
    (onTrack t43 track28)
    (onTrack t44 track29)
    (onTrack t45 track29)
    (onTrack t46 track29)
    (onTrack t47 track30)
    (onTrack t48 track30)
    (onTrack t49 track31)
    (onTrack t50 track31)
    (onTrack t51 track32)
    (onTrack t52 track33)
    (onTrack t53 track34)
    (onTrack t54 track35)
    (onTrack t55 track36)
    (onTrack t56 track37)

    ; Set tracks as service ones
    (isServiceTrack track8 inspection)
    (isServiceTrack track29 washing)
    (isServiceTrack track30 cleaning)
    (isServiceTrack track31 cleaning)
)
(:goal (and
    (forall (?t - trainunit) (and (hasDeparted ?t) (hasBeenParked ?t)))
    (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
    (at train6 v1)
    (at train8 v2)
    (at train1 v3)
    (at train5 v4)
    (at train7 v5)
    (at train3 v6)
    (at train9 v7)
    (at train4 v8)
    (at train2 v9)
    (at train10 v10)
)))
