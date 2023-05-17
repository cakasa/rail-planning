(define (problem problem04) (:domain servicing-no-fluents)
(:objects
    train1 - slt
    train2 - sng
    train3 - sng
    train4 - slt
    train5 - sng
    train6 - sng
    train7 - sng
    v1 v2 v3 v4 v5 v6 v7 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 - trackpart
    track0 track1 track2 track3 track4 track5 track6 track7 track8 track9 track10 - track
    cleaning inspection - service
)
(:init
    ; Initialize trains
    (at train1 v1)
    (beginsAt train1 v1)
    (endsAt train1 v1)
    (needsService train1 cleaning)

    (at train2 v2)
    (beginsAt train2 v2)
    (endsAt train2 v2)
    (needsService train2 inspection)

    (at train3 v3)
    (beginsAt train3 v3)
    (endsAt train3 v3)

    (at train4 v4)
    (beginsAt train4 v4)
    (endsAt train4 v4)

    (at train5 v5)
    (beginsAt train5 v5)
    (endsAt train5 v5)

    (at train6 v6)
    (beginsAt train6 v6)
    (endsAt train6 v6)

    (at train7 v7)
    (beginsAt train7 v7)
    (endsAt train7 v7)

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
    ; Connect path to first non-path node
    (nextTo v1 t0)
    (nextTo t0 v1)
    ; Set adjacency of nodes on the same track
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (nextTo t4 t5)
    (nextTo t5 t4)
    (nextTo t6 t7)
    (nextTo t7 t6)
    ; Connect adjacent tracks
    (nextTo t1 t2)
    (nextTo t2 t1)
    (nextTo t1 t4)
    (nextTo t4 t1)
    (nextTo t5 t6)
    (nextTo t6 t5)
    (nextTo t5 t8)
    (nextTo t8 t5)
    (nextTo t8 t9)
    (nextTo t9 t8)
    (nextTo t8 t10)
    (nextTo t10 t8)
    (nextTo t8 t11)
    (nextTo t11 t8)
    (nextTo t8 t12)
    (nextTo t12 t8)
    (nextTo t8 t13)
    (nextTo t13 t8)
    (nextTo t8 t14)
    (nextTo t14 t8)

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

    ; Add path nodes to path
    (onPath v1)
    (onPath v2)
    (onPath v3)
    (onPath v4)
    (onPath v5)
    (onPath v6)
    (onPath v7)

    ; Assign nodes to tracks
    (onTrack t0 track0)
    (onTrack t1 track0)
    (onTrack t2 track1)
    (onTrack t3 track1)
    (onTrack t4 track2)
    (onTrack t5 track2)
    (onTrack t6 track3)
    (onTrack t7 track3)
    (onTrack t8 track4)
    (onTrack t9 track5)
    (onTrack t10 track6)
    (onTrack t11 track7)
    (onTrack t12 track8)
    (onTrack t13 track9)
    (onTrack t14 track10)

    ; Set tracks as service ones
    (isServiceTrack track1 cleaning)
    (isServiceTrack track8 inspection)
)
(:goal (and
    (forall (?t - trainunit) (and (hasDeparted ?t) (hasBeenParked ?t)))
    (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
    (at train1 v1)
    (beginsAt train1 v1)
    (endsAt train1 v1)
    (at train2 v2)
    (beginsAt train2 v2)
    (endsAt train2 v2)
    (at train3 v3)
    (beginsAt train3 v3)
    (endsAt train3 v3)
    (at train4 v4)
    (beginsAt train4 v4)
    (endsAt train4 v4)
    (at train5 v5)
    (beginsAt train5 v5)
    (endsAt train5 v5)
    (at train6 v6)
    (beginsAt train6 v6)
    (endsAt train6 v6)
    (at train7 v7)
    (beginsAt train7 v7)
    (endsAt train7 v7)
)))
