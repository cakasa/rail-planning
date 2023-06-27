(define (problem service01) (:domain tusp-with-servicing)
(:objects
   train1 - slt
   v1 t0 t1  - trackpart
   track1  - track
)
(:init
   (at train1 v1)
   (nextTo v1 t0)
   (nextTo t0 v1)
   (nextTo t0 t1)
   (nextTo t1 t0)
   (free t1)
   (free t0)
   (switch t0)
   (onTrack t0 track1)
   (onTrack t1 track1)
   (onPath v1)
   (beginsAt train1 v1)
   (endsAt train1 v1)
   (= (timestep) 0)
   (= (arrive train1) 5)
   (= (depart train1) 0)
)
(:goal (and
   (exists (?t - slt) (at ?t v1))
   (forall (?t - trainunit) (hasBeenParked ?t))
))
; (:metric minimize (timestep))
)