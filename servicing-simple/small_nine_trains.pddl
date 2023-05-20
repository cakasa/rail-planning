(define (problem small_nine_trains) (:domain servicing-simple)
(:objects
    train1 - slt
    train2 - sng
    train3 - icm
    train4 - virm
    train5 - sng
    train6 - icm
    train7 - sng
    train8 - virm
    train9 - slt
    v1 v2 v3 v4 v5 v6 v7 v8 v9 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 - trackpart
    track0 track1 track2 track3 track4 track5 - track
    cleaning - service
)
(:init
    ; Initialize trains
    (at train1 v1)
    (needsService train1 cleaning)

    (at train2 v2)

    (at train3 v3)
    (needsService train3 cleaning)

    (at train4 v4)

    (at train5 v5)

    (at train6 v6)

    (at train7 v7)
    (needsService train7 cleaning)

    (at train8 v8)

    (at train9 v9)

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
    ; Connect path to first non-path node
    (nextTo v1 t0)
    (nextTo t0 v1)
    ; Set adjacency of nodes on the same track
    (nextTo t1 t2)
    (nextTo t2 t1)
    (nextTo t3 t4)
    (nextTo t4 t3)
    (nextTo t6 t7)
    (nextTo t7 t6)
    (nextTo t8 t9)
    (nextTo t9 t8)
    ; Connect adjacent tracks
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t0 t3)
    (nextTo t3 t0)
    (nextTo t4 t5)
    (nextTo t5 t4)
    (nextTo t2 t6)
    (nextTo t6 t2)
    (nextTo t2 t8)
    (nextTo t8 t2)

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

    ; Assign nodes to tracks
    (onTrack t0 track0)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track2)
    (onTrack t4 track2)
    (onTrack t5 track3)
    (onTrack t6 track4)
    (onTrack t7 track4)
    (onTrack t8 track5)
    (onTrack t9 track5)

    ; Set tracks as service ones
    (isServiceTrack track2 cleaning)
)
(:goal (and
    (forall (?t - trainunit) (and (hasDeparted ?t) (hasBeenParked ?t)))
    (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
    (at train3 v1)
    (at train7 v2)
    (at train9 v3)
    (at train2 v4)
    (at train8 v5)
    (at train1 v6)
    (at train4 v7)
    (at train6 v8)
    (at train5 v9)
)))
