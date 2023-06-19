(define (problem problem1-prev-next) (:domain domain0-derived-reachable)
(:objects
  train1 train2 train3 train4 train5  - trainunit
  v1 v2 v3 v4 v5 t0 t1 t3 t2 t4 t5  - trackpart
  track1 track2 track3  - track
)
(:init
   (at train1 v4)
   (next v1 v2)
   (prev v2 v1)
   (at train2 v1)
   (next v2 v3)
   (prev v3 v2)
   (at train3 v3)
   (next v3 v4)
   (prev v4 v3)
   (at train4 v2)
   (next v4 v5)
   (prev v5 v4)
   (at train5 v5)
   (prev v1 t0)
   (next t0 v1)
   (prev t0 t1)
   (next t1 t0)
   (free t0)
   (free t1)
   (prev t1 t3)
   (next t3 t1)
   (free t3)
   (prev t0 t2)
   (next t2 t0)
   (free t2)
   (prev t2 t4)
   (next t4 t2)
   (free t4)
   (prev t0 t5)
   (next t5 t0)
   (free t5)
   (onTrack t1 track1)
   (onTrack t3 track1)
   (onTrack t2 track2)
   (onTrack t4 track2)
   (onTrack t5 track3)
)
(:goal (and
   (at train1 v1)
   (at train2 v2)
   (at train3 v3)
   (at train4 v4)
   (at train5 v5)
   (forall (?t - trainunit) (hasBeenParked ?t))
)))