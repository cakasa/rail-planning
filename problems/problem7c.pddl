(define (problem problem7) (:domain tusd)
(:objects
	train1 train2 train3  - slt
	train4 train5  - sng
	train6  - virm
	train7  - icm
	v1 t1 t2 t3 t4 t5 t6 t7 t8 t9 - trackpart
	track1 track2 track3  - track
)
(:init
	(entrance v1)
	(free t1)
	(free t2)
	(free t3)
	(free t4)
	(free t5)
	(free t6)
	(free t7)
	(free t8)
	(free t9)
	(onTrack t1 track1)
	(onTrack t2 track1)
	(onTrack t3 track1)
	(onTrack t4 track2)
	(onTrack t5 track2)
	(onTrack t6 track2)
	(onTrack t7 track3)
	(onTrack t8 track3)
	(onTrack t9 track3)
	(nextTo v1 t1) (nextTo t1 v1)
	(nextTo v1 t4) (nextTo t4 v1) 
	(nextTo v1 t7) (nextTo t7 v1)
	(nextTo t1 t4) (nextTo t4 t1)
	(nextTo t1 t7) (nextTo t7 t1)
	(nextTo t4 t7) (nextTo t7 t4)
	(nextTo t1 t2) (nextTo t2 t1)
	(nextTo t2 t3) (nextTo t3 t2)
	(nextTo t4 t5) (nextTo t5 t4)
	(nextTo t5 t6) (nextTo t6 t5)
	(nextTo t7 t8) (nextTo t8 t7)
	(nextTo t8 t9) (nextTo t9 t8)
	(at train1 v1)
	(at train2 v1)
	(at train3 v1)
	(at train4 v1)
	(at train5 v1)
	(at train6 v1)
	(at train7 v1)
	(= (timestep) 0)
	(= (cost) 0)
	(= (arrive train1) 0)
	(= (arrive train2) 1)
	(= (arrive train3) 8)
	(= (arrive train4) 2)
	(= (arrive train5) 3)
	(= (arrive train6) 4)
	(= (arrive train7) 7)
	(= (departed train1) 0)
	(= (departed train2) 0)
	(= (departed train3) 0)
	(= (departed train4) 0)
	(= (departed train5) 0)
	(= (departed train6) 0)
	(= (departed train7) 0)
)
(:goal (and
	(exists (?t - icm) (= (departed ?t) 12))
	(exists (?t - slt) (= (departed ?t) 10))
	(exists (?t - slt) (= (departed ?t) 11))
	(exists (?t - slt) (= (departed ?t) 13))
	(exists (?t - sng) (= (departed ?t) 5))
	(exists (?t - sng) (= (departed ?t) 6))
	(exists (?t - virm) (= (departed ?t) 12))
	(forall (?t - trainunit) (and (hasBeenParked ?t) (at ?t v1)))
	(>= (timestep) 14)
))
(
	:metric minimize (cost)
)
)