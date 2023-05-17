(define (problem problem2-extended) (:domain domain1-extended)
(:objects
   train1 - sng
   train2 - sng
   train3 - icm
   train4 - virm
   train5 - slt
   train6 - slt
   v1 v2 v3 v4 v5 v6 t0 t1 t2 t3 t4 t5 t6  - trackpart
   track1 track2  - track
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
   (nextTo v1 t0)
   (nextTo t0 t1)
   (free t0)
   (free t1)
   (nextTo t1 t2)
   (free t2)
   (nextTo t2 t3)
   (free t3)
   (nextTo t3 t4)
   (free t4)
   (nextTo t0 t5)
   (free t5)
   (nextTo t5 t6)
   (free t6)
   (onTrack t1 track1)
   (onTrack t2 track1)
   (onTrack t3 track1)
   (onTrack t4 track1)
   (onTrack t5 track2)
   (onTrack t6 track2)
   (lastfree t4 track1)
   (lastfree t6 track2)
   (onPath v1)
   (onPath v2)
   (onPath v3)
   (onPath v4)
   (onPath v5)
   (onPath v6)
   (switch t0)  
)
(:goal (and
   (forall (?t - slt) (or (at ?t v1) (at ?t v4)))
   (forall (?t - sng) (or (at ?t v2) (at ?t v5)))
   (forall (?t - virm) (or (at ?t v3)))
   (forall (?t - icm) (or (at ?t v6)))
   (forall (?t - trainunit) (hasBeenParked ?t))
)))
