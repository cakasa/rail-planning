(define (problem problem1) (:domain domain5)
(:objects
  train1 train2 train3 train4 train5  - trainunit
  v1 t0 t1 t2 t3 t4 t5  - trackpart
  track1 track2 track3  - track
)
(:init
   (driver train2)
   (nextTrainArriving train2 train4)
   (nextTrainArriving train4 train3)
   (nextTrainArriving train3 train1)
   (nextTrainArriving train1 train5)
   (lastArrival train5)
   (firstDeparture train5)
   (nextTrainDeparting train5 train4)
   (nextTrainDeparting train4 train3)
   (nextTrainDeparting train3 train2)
   (nextTrainDeparting train2 train1)

   (nextToArrival t0 t5)
   (nextToDeparture t5 t0)
   (at train1 v1)
   (at train2 v1)
   (at train3 v1)
   (at train4 v1)
   (at train5 v1)
   (nextToArrival v1 t0)
   (nextToDeparture t0 v1)
   (nextToArrival t0 t1)
   (nextToDeparture t1 t0)
   (free t0)
   (free t1)
   (nextToArrival t1 t3)
   (nextToDeparture t3 t1)
   (free t3)
   (nextToArrival t0 t2)
   (nextToDeparture t2 t0)
   (free t2)
   (nextToArrival t2 t4)
   (nextToDeparture t4 t2)
   (free t4)
   (free t5)

   (onTrack t1 track1)
   (onTrack t3 track1)
   (onTrack t2 track2)
   (onTrack t4 track2)
   (onTrack t5 track3)

   (canPark t3)
   (canPark t4)
   (canPark t5)

   (station v1)
   
   (= (arrive train2) 1)
   (= (arrive train4) 2)
   (= (arrive train3) 3)
   (= (arrive train1) 4)
   (= (arrive train5) 5)
   (= (depart train1) 5)
   (= (depart train2) 4)
   (= (depart train3) 3)
   (= (depart train4) 2)
   (= (depart train5) 1)
   (= (depth t1) 1)
   (= (depth t2) 1)
   (= (depth t3) 2)
   (= (depth t4) 2)
   (= (depth t5) 1)
)
(:goal (and
   (forall (?t - trainunit) (hasDeparted ?t))
)))
