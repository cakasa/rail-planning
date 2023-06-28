(define (problem service-02) (:domain servicing-no-fluents)
(:objects
   train1 - slt
   train2 - sng
   v1 v2 v3 t0 t1 t2 t3 t4 - trackpart
   track0 track1 track2 - track
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
   
   (onTrack t0 track0)

   (isServiceTrack track2 cleaning)
   (needsService train1 cleaning)
)
(:goal (and
   (forall (?trainunit - trainunit) (hasDeparted ?trainunit))
   (at train1 v1)
   (at train1 v2)
   (at train2 v3)
   (forall (?t - trainunit) (hasBeenParked ?t))
   (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
))
; (:metric minimize (timestep))
)
