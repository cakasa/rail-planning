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

