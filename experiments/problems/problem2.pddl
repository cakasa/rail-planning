(define (problem problem2) (:domain tusd)
(:objects
	train2  - virm
	train1  - sng
	train3  - sng
	train4  - slt
	v1 t1 t2 t3 t4 t5 t6 t7 t8 t9 - trackpart
	track1 track2 track3  - track
)
(:init
	(entrance v1)
	(nextTo v1 t9)
	(nextTo t9 v1)
	(nextTo t4 t9)
	(nextTo t9 t4)
	(nextTo t9 t7)
	(nextTo t7 t9)
	(nextTo t9 t8)
	(nextTo t8 t9)
	(nextTo t8 t5)
	(nextTo t5 t8)
	(nextTo v1 t4)
	(nextTo t4 v1)
	(nextTo v1 t7)
	(nextTo t7 v1)
	(nextTo t4 t2)
	(nextTo t2 t4)
	(nextTo t2 t1)
	(nextTo t1 t2)
	(nextTo t7 t6)
	(nextTo t6 t7)
	(nextTo t6 t3)
	(nextTo t3 t6)
	(nextTo t7 t4)
	(nextTo t4 t7)
	(free t1)
	(free t2)
	(free t3)
	(free t4)
	(free t5)
	(free t6)
	(free t7)
	(free t8)
	(free t9)
	(onTrack t9 track1)
	(onTrack t8 track1)
	(onTrack t5 track1)
	(onTrack t4 track2)
	(onTrack t2 track2)
	(onTrack t1 track2)
	(onTrack t7 track3)
	(onTrack t6 track3)
	(onTrack t3 track3)
	(= (timestep) 0)
	(= (cost) 0)
	(at train2 v1)
	(at train1 v1)
	(at train3 v1)
	(at train4 v1)
	(= (arrive train2) 1)
	(= (arrive train1) 0)
	(= (arrive train3) 2)
	(= (arrive train4) 5)
	(= (departed train2) 0)
	(= (departed train1) 0)
	(= (departed train3) 0)
	(= (departed train4) 0)
)
(:goal (and
	(exists (?t - virm) (= (departed ?t) 3))
	(exists (?t - sng) (= (departed ?t) 4))
	(exists (?t - sng) (= (departed ?t) 6))
	(exists (?t - slt) (= (departed ?t) 7))
	(forall (?t - trainunit) (and (hasBeenParked ?t) (at ?t v1)))
	(= (timestep) 8)
))
(
	:metric minimize (cost)
)
)