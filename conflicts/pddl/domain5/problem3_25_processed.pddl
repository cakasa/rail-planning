(define (problem problem3_25) (:domain domain5)
(:objects
    train1 train2 train3 train4 train5 train6 train7 train8 train9 train10 train11 train12 train13 train14 train15 train16 train17 train18 train19 train20 train21 train22 train23 train24 train25  - trainunit
    v1 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25  - trackpart
    track1 track2 track3 track4 track5 track6  - track
)
(:init
   (trainParkingTrack train12 track1) 
   (trainParkingTrack train2 track2) 
   (trainParkingTrack train4 track2) 
   (trainParkingTrack train3 track3) 
   (trainParkingTrack train7 track3) 
   (trainParkingTrack train13 track3) 
   (trainParkingTrack train17 track3) 
   (trainParkingTrack train18 track3) 
   (trainParkingTrack train1 track4) 
   (trainParkingTrack train5 track4) 
   (trainParkingTrack train9 track4) 
   (trainParkingTrack train14 track4) 
   (trainParkingTrack train19 track4) 
   (trainParkingTrack train20 track4) 
   (trainParkingTrack train21 track4) 
   (trainParkingTrack train6 track5) 
   (trainParkingTrack train8 track5) 
   (trainParkingTrack train15 track5) 
   (trainParkingTrack train22 track5) 
   (trainParkingTrack train23 track5) 
   (trainParkingTrack train10 track6) 
   (trainParkingTrack train11 track6) 
   (trainParkingTrack train16 track6) 
   (trainParkingTrack train24 track6) 
   (trainParkingTrack train25 track6) 
    (station v1)
    (driver train1)
    (nextTrainArriving train1 train2)
    (nextTrainArriving train2 train3)
    (nextTrainArriving train3 train4)
    (nextTrainArriving train4 train5)
    (nextTrainArriving train5 train6)
    (nextTrainArriving train6 train7)
    (nextTrainArriving train7 train8)
    (nextTrainArriving train8 train9)
    (nextTrainArriving train9 train10)
    (nextTrainArriving train10 train11)
    (nextTrainArriving train11 train12)
    (nextTrainArriving train12 train13)
    (nextTrainArriving train13 train14)
    (nextTrainArriving train14 train15)
    (nextTrainArriving train15 train16)
    (nextTrainArriving train16 train17)
    (nextTrainArriving train17 train18)
    (nextTrainArriving train18 train19)
    (nextTrainArriving train19 train20)
    (nextTrainArriving train20 train21)
    (nextTrainArriving train21 train22)
    (nextTrainArriving train22 train23)
    (nextTrainArriving train23 train24)
    (nextTrainArriving train24 train25)
    (lastArrival train25)
    (firstDeparture train4)
    (nextTrainDeparting train4 train18)
    (nextTrainDeparting train18 train21)
    (nextTrainDeparting train21 train12)
    (nextTrainDeparting train12 train20)
    (nextTrainDeparting train20 train19)
    (nextTrainDeparting train19 train25)
    (nextTrainDeparting train25 train17)
    (nextTrainDeparting train17 train2)
    (nextTrainDeparting train2 train23)
    (nextTrainDeparting train23 train24)
    (nextTrainDeparting train24 train13)
    (nextTrainDeparting train13 train7)
    (nextTrainDeparting train7 train16)
    (nextTrainDeparting train16 train11)
    (nextTrainDeparting train11 train14)
    (nextTrainDeparting train14 train9)
    (nextTrainDeparting train9 train3)
    (nextTrainDeparting train3 train10)
    (nextTrainDeparting train10 train5)
    (nextTrainDeparting train5 train22)
    (nextTrainDeparting train22 train15)
    (nextTrainDeparting train15 train8)
    (nextTrainDeparting train8 train1)
    (nextTrainDeparting train1 train6)
    (at train1 v1)
    (at train2 v1)
    (at train3 v1)
    (at train4 v1)
    (at train5 v1)
    (at train6 v1)
    (at train7 v1)
    (at train8 v1)
    (at train9 v1)
    (at train10 v1)
    (at train11 v1)
    (at train12 v1)
    (at train13 v1)
    (at train14 v1)
    (at train15 v1)
    (at train16 v1)
    (at train17 v1)
    (at train18 v1)
    (at train19 v1)
    (at train20 v1)
    (at train21 v1)
    (at train22 v1)
    (at train23 v1)
    (at train24 v1)
    (at train25 v1)
    (nextToArrival v1 t0)
    (nextToDeparture t0 v1)
    (nextToArrival t0 t1)
    (nextToDeparture t1 t0)
    (free t0)
    (free t1)
    (nextToArrival t0 t2)
    (nextToDeparture t2 t0)
    (free t2)
    (nextToArrival t2 t3)
    (nextToDeparture t3 t2)
    (free t3)
    (nextToArrival t0 t4)
    (nextToDeparture t4 t0)
    (free t4)
    (nextToArrival t4 t5)
    (nextToDeparture t5 t4)
    (free t5)
    (nextToArrival t5 t6)
    (nextToDeparture t6 t5)
    (free t6)
    (nextToArrival t6 t7)
    (nextToDeparture t7 t6)
    (free t7)
    (nextToArrival t7 t8)
    (nextToDeparture t8 t7)
    (free t8)
    (nextToArrival t0 t9)
    (nextToDeparture t9 t0)
    (free t9)
    (nextToArrival t9 t10)
    (nextToDeparture t10 t9)
    (free t10)
    (nextToArrival t10 t11)
    (nextToDeparture t11 t10)
    (free t11)
    (nextToArrival t11 t12)
    (nextToDeparture t12 t11)
    (free t12)
    (nextToArrival t12 t13)
    (nextToDeparture t13 t12)
    (free t13)
    (nextToArrival t13 t14)
    (nextToDeparture t14 t13)
    (free t14)
    (nextToArrival t14 t15)
    (nextToDeparture t15 t14)
    (free t15)
    (nextToArrival t0 t16)
    (nextToDeparture t16 t0)
    (free t16)
    (nextToArrival t16 t17)
    (nextToDeparture t17 t16)
    (free t17)
    (nextToArrival t17 t18)
    (nextToDeparture t18 t17)
    (free t18)
    (nextToArrival t18 t19)
    (nextToDeparture t19 t18)
    (free t19)
    (nextToArrival t19 t20)
    (nextToDeparture t20 t19)
    (free t20)
    (nextToArrival t0 t21)
    (nextToDeparture t21 t0)
    (free t21)
    (nextToArrival t21 t22)
    (nextToDeparture t22 t21)
    (free t22)
    (nextToArrival t22 t23)
    (nextToDeparture t23 t22)
    (free t23)
    (nextToArrival t23 t24)
    (nextToDeparture t24 t23)
    (free t24)
    (nextToArrival t24 t25)
    (nextToDeparture t25 t24)
    (free t25)
    (canPark t1)
    (onTrack t1 track1)
    (canPark t3)
    (onTrack t2 track2)
    (onTrack t3 track2)
    (canPark t8)
    (onTrack t4 track3)
    (onTrack t5 track3)
    (onTrack t6 track3)
    (onTrack t7 track3)
    (onTrack t8 track3)
    (canPark t15)
    (onTrack t9 track4)
    (onTrack t10 track4)
    (onTrack t11 track4)
    (onTrack t12 track4)
    (onTrack t13 track4)
    (onTrack t14 track4)
    (onTrack t15 track4)
    (canPark t20)
    (onTrack t16 track5)
    (onTrack t17 track5)
    (onTrack t18 track5)
    (onTrack t19 track5)
    (onTrack t20 track5)
    (canPark t25)
    (onTrack t21 track6)
    (onTrack t22 track6)
    (onTrack t23 track6)
    (onTrack t24 track6)
    (onTrack t25 track6)
    (= (arrive train1) 1)
    (= (depart train4) 1)
    (= (arrive train2) 2)
    (= (depart train18) 2)
    (= (arrive train3) 3)
    (= (depart train21) 3)
    (= (arrive train4) 4)
    (= (depart train12) 4)
    (= (arrive train5) 5)
    (= (depart train20) 5)
    (= (arrive train6) 6)
    (= (depart train19) 6)
    (= (arrive train7) 7)
    (= (depart train25) 7)
    (= (arrive train8) 8)
    (= (depart train17) 8)
    (= (arrive train9) 9)
    (= (depart train2) 9)
    (= (arrive train10) 10)
    (= (depart train23) 10)
    (= (arrive train11) 11)
    (= (depart train24) 11)
    (= (arrive train12) 12)
    (= (depart train13) 12)
    (= (arrive train13) 13)
    (= (depart train7) 13)
    (= (arrive train14) 14)
    (= (depart train16) 14)
    (= (arrive train15) 15)
    (= (depart train11) 15)
    (= (arrive train16) 16)
    (= (depart train14) 16)
    (= (arrive train17) 17)
    (= (depart train9) 17)
    (= (arrive train18) 18)
    (= (depart train3) 18)
    (= (arrive train19) 19)
    (= (depart train10) 19)
    (= (arrive train20) 20)
    (= (depart train5) 20)
    (= (arrive train21) 21)
    (= (depart train22) 21)
    (= (arrive train22) 22)
    (= (depart train15) 22)
    (= (arrive train23) 23)
    (= (depart train8) 23)
    (= (arrive train24) 24)
    (= (depart train1) 24)
    (= (arrive train25) 25)
    (= (depart train6) 25)
)
(:goal (and
    (hasDeparted train1)
    (hasDeparted train2)
    (hasDeparted train3)
    (hasDeparted train4)
    (hasDeparted train5)
    (hasDeparted train6)
    (hasDeparted train7)
    (hasDeparted train8)
    (hasDeparted train9)
    (hasDeparted train10)
    (hasDeparted train11)
    (hasDeparted train12)
    (hasDeparted train13)
    (hasDeparted train14)
    (hasDeparted train15)
    (hasDeparted train16)
    (hasDeparted train17)
    (hasDeparted train18)
    (hasDeparted train19)
    (hasDeparted train20)
    (hasDeparted train21)
    (hasDeparted train22)
    (hasDeparted train23)
    (hasDeparted train24)
    (hasDeparted train25)
)))
