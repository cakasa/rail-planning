(define (problem problem3) (:domain domain1)
(:objects
   train1 - virm 
   train2 - sng
   train3 - icm
   train4 - virm
   v1 v2 v3 v4 t0 t1 t2 t3 t4  - trackpart
   track1 track2  - track
)
(:init
   (at train1 v1)
   (nextTo v1 v2)
   (nextTo v2 v1)
   (at train2 v2)
   (nextTo v2 v3)
   (nextTo v3 v2)
   (at train3 v3)
   (nextTo v3 v4)
   (nextTo v4 v3)
   (at train4 v4)
   (nextTo v1 t0)
   (nextTo t0 v1)
   (nextTo t0 t1)
   (nextTo t1 t0)
   (free t0)
   (free t1)
   (nextTo t0 t2)
   (nextTo t2 t0)
   (free t2)
   (nextTo t1 t3)
   (nextTo t3 t1)
   (free t3)
   (nextTo t2 t4)
   (nextTo t4 t2)
   (free t4)
   (onTrack t1 track1)
   (onTrack t3 track1)
   (onTrack t2 track2)
   (onTrack t4 track2)
   (onPath v1)
   (onPath v2)
   (onPath v3)
   (onPath v4)
   (switch t0)
)
(:goal (and
   (exists (?t - virm) (at ?t v1))
   (exists (?t - virm) (at ?t v4))
   (exists (?t - sng) (at ?t v2))
   (exists (?t - icm) (at ?t v3))
   (forall (?t - trainunit) (hasBeenParked ?t))
)))
