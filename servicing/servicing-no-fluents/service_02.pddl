(define (problem service01) (:domain servicing-no-fluents)
(:objects
   train1 - slt
   train2 train3 - sng
   v1 v2 v3 v4 v5 t0 t1 t2 t3 t4 t5 t6 - trackpart
   track1 track2 track3 - track
   cleaning maintenance - service
)
(:init
   (at train1 v1)
   (at train1 v2)
   (beginsAt train1 v1)
   (endsAt train1 v2)

   (at train2 v3)
   (beginsAt train2 v3)
   (endsAt train2 v3)

   (at train3 v4)
   (at train3 v5)
   (beginsAt train3 v4)
   (endsAt train3 v5)

   (nextTo v5 v4)
   (nextTo v4 v5)
   (nextTo v3 v4)
   (nextTo v4 v3)
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
   (nextTo t4 t5)
   (nextTo t5 t4)
   (nextTo t2 t5)
   (nextTo t5 t2)
   (nextTo t5 t6)
   (nextTo t6 t5)

   (free t0)
   (free t1)
   (free t2)
   (free t3)
   (free t4)
   (free t5)
   (free t6)
   
   (onPath v1)
   (onPath v2)
   (onPath v3)
   (onPath v4)
   (onPath v5)

   (onTrack t1 track1)
   (onTrack t2 track1)
   (onTrack t3 track2)
   (onTrack t4 track2)
   (onTra)
   (onTrack t6 track3)

   (isServiceTrack track2 cleaning)
   (isServiceTrack track2 maintenance)
   (needsService train1 cleaning)
   (needsService train2 maintenance)
)
(:goal (and
   (at train1 v5)
   (at train1 v4)
   (at train3 v3)
   (at train3 v2)
   (at train2 v1)
   (forall (?t - trainunit) (hasBeenParked ?t))
   (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))
))
; (:metric minimize (timestep))
)
