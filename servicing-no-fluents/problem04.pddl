(define (problem problem04) (:domain servicing-no-fluents)
(:objects
    train1 - slt
    train2 - sng
    train3 - sng
    train4 - slt
    train5 - sng
    train6 - sng
    train7 - sng
    train8 - sng
    train9 - sng
    train10 - sng
    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 - trackpart
    track0 track1 track2 track3 track4 track5 track6 track7 track8 track9 track10 - track
    inspection cleaning - service
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

    (at train8 v8)
    (beginsAt train8 v8)
    (endsAt train8 v8)

    (at train9 v9)
    (beginsAt train9 v9)
    (endsAt train9 v9)

    (at train10 v10)
    (beginsAt train10 v10)
    (endsAt train10 v10)

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
    ; Connect adjacent tracks
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t0 t2)
    (nextTo t2 t0)
    (nextTo t2 t3)
    (nextTo t3 t2)
    (nextTo t2 t4)
    (nextTo t4 t2)
    (nextTo t4 t5)
    (nextTo t5 t4)
    (nextTo t4 t6)
    (nextTo t6 t4)
    (nextTo t4 t7)
    (nextTo t7 t4)
    (nextTo t4 t8)
    (nextTo t8 t4)
    (nextTo t4 t9)
    (nextTo t9 t4)
    (nextTo t4 t10)
    (nextTo t10 t4)

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
    (onTrack t8 track8)
    (onTrack t9 track9)
    (onTrack t10 track10)

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
    (at train8 v8)
    (beginsAt train8 v8)
    (endsAt train8 v8)
    (at train9 v9)
    (beginsAt train9 v9)
    (endsAt train9 v9)
    (at train10 v10)
    (beginsAt train10 v10)
    (endsAt train10 v10)
)))
