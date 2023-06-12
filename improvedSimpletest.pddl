(define (problem simpleProblem1) (:domain imprDomain)
(:objects
    train1 - sng
    v1 t0 t1  - trackpart
    track1 - LIFO
)
(:init
    (at train1 v1)
    (next v1 t0)
    (prev t0 v1)
    (switch t0)
    (next t0 t1)
    (prev t1 t0)
    (free t0)
    (free t1)
    (last-track t1)
    (onTrack t1 track1)
   
    (onPath v1)
)
(:goal (and
    (at train1 v1)
    (hasBeenParked train1)

)))
