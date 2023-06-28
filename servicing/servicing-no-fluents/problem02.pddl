(define (problem problem02) (:domain servicing-no-fluents)
(:objects
    train1 - slt
    train2 - sng
    v1 v2 v3 v4 t0 t1 t2 t3 t4 - trackpart
    track0 track1 track2 - track
    cleaning - service
)
(:init
    ; Initialize trains
    (at train1 v1)
    (at train1 v2)
    (beginsAt train1 v1)
    (endsAt train1 v2)
    (needsService train1 cleaning)

    (at train2 v3)
    (at train2 v4)
    (beginsAt train2 v3)
    (endsAt train2 v4)
    (needsService train2 cleaning)

    ; Set adjacency of path nodes
    (nextTo v1 v2)
    (nextTo v2 v1)
    (nextTo v2 v3)
    (nextTo v3 v2)
    (nextTo v3 v4)
    (nextTo v4 v3)
    ; Connect path to first non-path node
    (nextTo v1 t0)
    (nextTo t0 v1)
    ; Set adjacency of nodes on the same track
    (nextTo t1 t2)
    (nextTo t2 t1)
    (nextTo t3 t4)
    (nextTo t4 t3)
    ; Connect adjacent tracks
    (nextTo t0 t1)
    (nextTo t1 t0)
    (nextTo t2 t3)
    (nextTo t3 t2)

    ; Set all non-path nodes as free
    (free t3)
    (free t1)
    (free t0)
    (free t4)
    (free t2)

    ; Add path nodes to path
    (onPath v1)
    (onPath v2)
    (onPath v3)
    (onPath v4)

    ; Assign nodes to tracks
    (onTrack t0 track0)
    (onTrack t1 track1)
    (onTrack t2 track1)
    (onTrack t3 track2)
    (onTrack t4 track2)

    ; Set tracks as service ones
    (isServiceTrack track1 cleaning)
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
    (beginsAt train1 v4)
    (endsAt train1 v3)
)))
