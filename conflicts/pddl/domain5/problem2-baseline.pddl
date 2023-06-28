(define (problem problem2_15) (:domain domain5-baseline)
(:objects
    train1 train2 train3 train4 train5 train6 train7 train8 train9 train10 train11 train12 train13 train14 train15  - trainunit
    v1 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15  - trackpart
    track1 track2 track3 track4  - track
)
(:init
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
    (lastArrival train15)
    (firstDeparture train7)
    (nextTrainDeparting train7 train6)
    (nextTrainDeparting train6 train4)
    (nextTrainDeparting train4 train15)
    (nextTrainDeparting train15 train14)
    (nextTrainDeparting train14 train12)
    (nextTrainDeparting train12 train2)
    (nextTrainDeparting train2 train1)
    (nextTrainDeparting train1 train11)
    (nextTrainDeparting train11 train13)
    (nextTrainDeparting train13 train10)
    (nextTrainDeparting train10 train3)
    (nextTrainDeparting train3 train9)
    (nextTrainDeparting train9 train5)
    (nextTrainDeparting train5 train8)
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
    (= (arrive train1) 1)
    (= (depart train7) 1)
    (= (arrive train2) 2)
    (= (depart train6) 2)
    (= (arrive train3) 3)
    (= (depart train4) 3)
    (= (arrive train4) 4)
    (= (depart train15) 4)
    (= (arrive train5) 5)
    (= (depart train14) 5)
    (= (arrive train6) 6)
    (= (depart train12) 6)
    (= (arrive train7) 7)
    (= (depart train2) 7)
    (= (arrive train8) 8)
    (= (depart train1) 8)
    (= (arrive train9) 9)
    (= (depart train11) 9)
    (= (arrive train10) 10)
    (= (depart train13) 10)
    (= (arrive train11) 11)
    (= (depart train10) 11)
    (= (arrive train12) 12)
    (= (depart train3) 12)
    (= (arrive train13) 13)
    (= (depart train9) 13)
    (= (arrive train14) 14)
    (= (depart train5) 14)
    (= (arrive train15) 15)
    (= (depart train8) 15)
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
)))