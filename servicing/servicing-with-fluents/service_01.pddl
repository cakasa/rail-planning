(define (problem service01) (:domain tusp-with-servicing)
(:objects
   train1 - slt
   train2 - sng
   v1 v2 v3 t0 t1 t2 t3 t4 - trackpart
   track1 track2  - track
   cleaning - service
)
(:init
   (at train1 v1)
   (at train1 v2)
   (beginsAt train1 v1)
   (endsAt train1 v2)

   (at train2 v3)
   (beginsAt train2 v3)
   (endsAt train2 v3)

   (nextTo v2 v3)
   (nextTo v3 v2)
   (nextTo v1 v2)
   (nextTo v2 v1)
   (nextTo v1 t0)
   (nextTo t0 v1)
   (nextTo t0 t1)
   (nextTo t1 t0)
   (nextTo t1 t2)
   (nextTo t2 t1)
   (nextTo t0 t3)
   (nextTo t3 t0)
   (nextTo t3 t4)
   (nextTo t4 t3)
   
   (free t0)
   (free t1)
   (free t2)
   (free t3)
   (free t4)
   
   (onPath v1)
   (onPath v2)
   (onPath v3)

   (onTrack t1 track1)
   (onTrack t2 track1)
   (onTrack t3 track2)
   (onTrack t4 track2)
   
   (switch t0)
   (onTrack t0 track1)
   (onTrack t0 track2)

   (isServiceTrack track2 cleaning)

   (= (timestep) 0)
   (= (arrive train1) 5)
   (= (arrive train2) 3)
   (= (depart train1) 0)
   (= (depart train2) 0)

   (= (serviceDuration train1 cleaning) 5)
   (= (serviceDuration train2 cleaning) 0)
)
(:goal (and
   (exists (?t - slt) (and (at ?t v1) (<= (depart ?t) 2)))
   (exists (?t - slt) (and (at ?t v2) (<= (depart ?t) 2)))
   (exists (?t - sng) (and (at ?t v3) (<= (depart ?t) 2)))
   (forall (?t - trainunit) (hasBeenParked ?t))
   (forall (?t - trainunit ?s - service) (= (serviceDuration ?t ?s) 0))
))
; (:metric minimize (timestep))
)
