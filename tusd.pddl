(define (domain tusd)

(:requirements :equality :strips :typing :quantified-preconditions :conditional-effects :fluents)

(:types
    trackpart track trainunit - object
    icm virm sng slt - trainunit  ; these are the different types of train units
)

(:predicates 
    (nextTo ?x ?y - trackpart);track part x next to other track part y
    (onTrack ?x - trackpart ?y - track) ;track part x on track y
    (entrance ?x - trackpart);track part x on arrival/departure path
    (at ?x - trainunit ?y - trackpart) ; trainunit x is on trackpart y
    (free ?x - trackpart)  ; there is not trainunit on trackpart x
    (hasBeenParked ?x) ;the train unit has been inside the yard
)
(:functions
    (cost) ; keeps track of the operation cost of the plan
    (timestep) ; this keeps track of the global time (in timesteps)
    (arrive ?x - trainunit) ;this is the arrival time (a certain time step) of train unit x
    (departed ?x - trainunit) ; this is the time the train unit x actually departed
)

; move a train along a track
(:action move
    :parameters (?train - trainunit ?from ?to - trackpart ?track - track)
    :precondition (and 
        (nextTo ?from ?to)
        (at ?train ?from)
        (onTrack ?from ?track)
        (onTrack ?to ?track)
        (free ?to)  
    )
    :effect (and 
        (not (at ?train ?from))
        (at ?train ?to)
        (not (free ?to))
        (free ?from)
        (increase (cost) 1)
    )
)

; move a train between tracks
(:action move-between-tracks
    :parameters (?train - trainunit ?from ?to - trackpart ?track1 ?track2 - track)
    :precondition (and 
        (nextTo ?from ?to)
        (at ?train ?from)
        (onTrack ?from ?track1)
        (onTrack ?to ?track2)
        (free ?to)  
    )
    :effect (and 
        (not (at ?train ?from))
        (at ?train ?to)
        (not (free ?to))
        (free ?from)
        (increase (cost) 2)
    )
)


; move a train to the path, once it have been parked
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and 
                    (at ?train ?from) 
                    (nextTo ?from ?to)
                    (entrance ?to)
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from)) 
                    (free ?from)
                    (increase (departed ?train) (timestep))
                    (increase (timestep) 1)
                )
)

; move a train from the entrance into the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and
                    (= (timestep) (arrive ?train))
                    (at ?train ?from)
                    (free ?to)
                    (nextTo ?from ?to)
                    (entrance ?from) 
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from))
                    (not (free ?to))
                    (hasBeenParked ?train)
                    (increase (timestep) 1)
                )
)
)
