(define (problem hello) (:domain domain3)
(:objects
	train1  - slt
	train2  - slt
	train3  - sng
	v1 t1 t2 t3 s1  - trackpart
	track1 track2  - track
)
(:init
	(onPath v1)
	(nextTo v1 s1)
	(nextTo s1 v1)
	(nextTo s1 t2)
	(nextTo t2 s1)
	(nextTo s1 t1)
	(nextTo t1 s1)
	(nextTo t2 t3)
	(nextTo t3 t2)
	(free t1)
	(free t2)
	(free t3)
	(free s1)
	(switch s1)
	(onTrack t2 track1)
	(onTrack t3 track1)
	(onTrack t1 track2)
	(at train1 v1)
	(at train2 v1)
	(at train3 v1)
	(= (timestep) 0)
	(= (arrive train1) 1)
	(= (arrive train2) 17)
	(= (arrive train3) 16)
	(= (depart train1) 0)
	(= (depart train2) 0)
	(= (depart train3) 0)
	(= (length train1) 3)
	(= (length train2) 4)
	(= (length train3) 3)
	(= (capacity track1) 8)
	(= (capacity track2) 4)
)
(:goal (and
	(exists (?t - slt) (and (at ?t v1) (<= (depart ?t) 4) (= (length ?t) 3)))
	(exists (?t - slt) (and (at ?t v1) (<= (depart ?t) 500) (= (length ?t) 4)))
	(exists (?t - sng) (and (at ?t v1) (<= (depart ?t) 500) (= (length ?t) 3)))
	(forall (?t - trainunit) (hasBeenParked ?t))
))
)