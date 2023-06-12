 (define (problem simpleProblem1) (:domain imprDomain)
(:objects
    train1 - sng
    train2 - icm
    v1 v2 t0 t1 t2 - trackpart
    track1 - LIFO

)
(:init
    (at train1 v1)
    (next v1 v2)
    (prev v2 v1)
    (at train2 v2)
    (next v1 t0)
    (prev t0 v1)
    (switch t0)
    (next t0 t1)
    (prev t1 t0)
    (free t0)
    (free t1)
    (next t1 t2)
    (prev t2 t1)
    (free t2)

    (last-track t2)
    
    (onTrack t1 track1)
    (onTrack t2 track1)

   
    (onPath v1)
    (onPath v2)

)
(:goal (and
    (at train1 v1)
    (at train2 v2) 
    (hasBeenParked train1)
    (hasBeenParked train2)


)))