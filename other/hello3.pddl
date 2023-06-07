(define (problem hello3) (:domain domain4)
(:objects
	train1  - slt
	train2  - sng
	v1 t1 t2 t3 t4 s1  - trackpart
	track1 track2  - track
)
(:init
	(onPath v1)
	(nextTo v1 s1)
	(nextTo s1 v1)
	(nextTo s1 t4)
	(nextTo t4 s1)
	(nextTo s1 t2)
	(nextTo t2 s1)
	(nextTo t4 t1)
	(nextTo t1 t4)
	(nextTo t2 t3)
	(nextTo t3 t2)
	(free t1)
	(free t2)
	(free t3)
	(free t4)
	(free s1)
	(switch s1)
	(onTrack t4 track1)
	(onTrack t1 track1)
	(onTrack t2 track2)
	(onTrack t3 track2)
	(at train1 v1)
	(at train2 v1)
	(= (timestep) 0)
	(= (cost) 0)
	(= (arrive train1) 1)
	(= (arrive train2) 10)
	(= (departed train1) 0)
	(= (departed train2) 0)
	(= (length train1) 3)
	(= (length train2) 4)
	(= (capacity track1) 8)
	(= (capacity track2) 8)
)
(:goal (and
	(exists (?t - slt) (and (>= (departed ?t) 7) (<= (departed ?t) 9)))
	(exists (?t - sng) (and (>= (departed ?t) 16) (<= (departed ?t) 18)))
	(forall (?t - trainunit) (hasBeenParked ?t))
	(<= (timestep) 18)
))
(
	:metric minimize (cost)
)
)