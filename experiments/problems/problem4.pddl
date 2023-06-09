(define (problem problem4) (:domain domain6)
(:objects
	train1  - slt
	train4  - virm
	train5  - sng
	train2  - icm
	train6  - sng
	train3  - slt
	v1 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 s1 s2 s3  - trackpart
	track1 track2 track3 track4  - track
)
(:init
	(onPath v1)
	(nextTo v1 s3)
	(nextTo s3 v1)
	(nextTo s3 s1)
	(nextTo s1 s3)
	(nextTo s3 s2)
	(nextTo s2 s3)
	(nextTo s1 t6)
	(nextTo t6 s1)
	(nextTo s1 t9)
	(nextTo t9 s1)
	(nextTo t6 t4)
	(nextTo t4 t6)
	(nextTo t4 t2)
	(nextTo t2 t4)
	(nextTo t2 t1)
	(nextTo t1 t2)
	(nextTo t9 t8)
	(nextTo t8 t9)
	(nextTo t8 t3)
	(nextTo t3 t8)
	(nextTo s2 t10)
	(nextTo t10 s2)
	(nextTo s2 t11)
	(nextTo t11 s2)
	(nextTo t10 t5)
	(nextTo t5 t10)
	(nextTo t11 t7)
	(nextTo t7 t11)
	(free t1)
	(free t2)
	(free t3)
	(free t4)
	(free t5)
	(free t6)
	(free t7)
	(free t8)
	(free t9)
	(free t10)
	(free t11)
	(free s1)
	(switch s1)
	(free s2)
	(switch s2)
	(free s3)
	(switch s3)
	(onTrack t6 track1)
	(onTrack t4 track1)
	(onTrack t2 track1)
	(onTrack t1 track1)
	(onTrack t9 track2)
	(onTrack t8 track2)
	(onTrack t3 track2)
	(onTrack t10 track3)
	(onTrack t5 track3)
	(onTrack t11 track4)
	(onTrack t7 track4)
	(at train1 v1)
	(at train4 v1)
	(at train5 v1)
	(at train2 v1)
	(at train6 v1)
	(at train3 v1)
	(= (timestep) 0)
	(= (cost) 0)
	(= (arrive train1) 0)
	(= (arrive train4) 3)
	(= (arrive train5) 4)
	(= (arrive train2) 1)
	(= (arrive train6) 6)
	(= (arrive train3) 2)
	(= (departed train1) 0)
	(= (departed train4) 0)
	(= (departed train5) 0)
	(= (departed train2) 0)
	(= (departed train6) 0)
	(= (departed train3) 0)
)
(:goal (and
	(exists (?t - slt) (= (departed ?t) 5))
	(exists (?t - virm) (= (departed ?t) 7))
	(exists (?t - sng) (= (departed ?t) 8))
	(exists (?t - icm) (= (departed ?t) 9))
	(exists (?t - sng) (= (departed ?t) 10))
	(exists (?t - slt) (= (departed ?t) 11))
	(forall (?t - trainunit) (and (hasBeenParked ?t) (at ?t v1)))
	(= (timestep) 12)
))
(
	:metric minimize (cost)
)
)