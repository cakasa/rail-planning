(define (domain domain3)

(:requirements :adl :fluents)

(:types
    trackpart track trainunit - object
    icm virm sng slt - trainunit  ; these are the different types of train units
)

(:predicates 
    (nextTo ?x ?y - trackpart);track part x next to other track part y
    (onTrack ?x - trackpart ?y - track) ;track part x on track y
    (onPath ?x - trackpart);track part x on arrival/departure path y
    (switch ?x - trackpart) ; track part x is a switch, so not a track of a path
    (at ?x - trainunit ?y - trackpart) ; trainunit x is on trackpart y
    (free ?x - trackpart)  ; there is not trainunit on trackpart x
    (hasBeenParked ?x - trainunit) ; train unit x has been parked at some point
    (parkedOn ?x - trainunit ?y - track) ;train unit x is currently parted on track y
)
(:functions
    (timestep) ; this keeps track of the global time (in timesteps)
    (arrive ?x - trainunit) ;this is the arrival time (a certain time step) of train unit x
    (depart ?x - trainunit) ;this is the departure arrival time (a certain time step) of train unit x
    (length ?x - trainunit) ;this is the length of a train unit (in relative sense)
    (capacity ?t - track) ;this is the capacity of a track, the combined lenght of the train units parked on this track cannot exceed the capacity of that track.
)

; move a train unit from a switch node to a track 
(:action move-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and 
                    (at ?train ?from)
                    (free ?to) 
                    (nextTo ?from ?to)
                    (onTrack ?to ?t)
                    (switch ?from)
                    (>= (capacity ?t) (length ?train))
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (hasBeenParked ?train)
                    (parkedOn ?train ?t)
                    (increase (timestep) 1)
                    (decrease (capacity ?t) (length ?train))
                )
)

; move a train unit from a track onto a switch node
(:action move-from-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and 
                    (at ?train ?from)
                    (free ?to) 
                    (nextTo ?from ?to) 
                    (onTrack ?from ?t)
                    (switch ?to)
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from))
                    (free ?from)
                    (not (free ?to))
                    (not (parkedOn ?train ?t))
                    (increase (timestep) 1)
                    (increase (capacity ?t) (length ?train))
                )
)

; move a train unit along a track, for example further down on the track, while remaining on the same track
(:action move-along-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and 
                    (at ?train ?from)
                    (free ?to) 
                    (nextTo ?from ?to)
                    (onTrack ?from ?t)
                    (onTrack ?to ?t)
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from))
                    (free ?from)
                    (not (free ?to))
                    (increase (timestep) 1)
                )
)

; move a train to the path, once all trains have been parked
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and 
                    (at ?train ?from) 
                    (nextTo ?from ?to)
                    (onPath ?to)
                    (hasBeenParked ?train)
                    (>= (timestep) (depart ?train))
                    ; (forall (?unit - trainunit) (hasBeenParked ?unit))
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from)) 
                    (free ?from) 
                    ;(not (free ?to))
                    (assign (depart ?train) (timestep))
                    (increase (timestep) 1)
                )
)

; move a train from the arrival path into the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and
                    (<= (arrive ?train) (timestep))
                    (at ?train ?from) 
                    (free ?to) 
                    (nextTo ?from ?to) 
                    (not (hasBeenParked ?train))
                    (onPath ?from) 
                )
    :effect (and 
                    (at ?train ?to)
                    (not (at ?train ?from)) 
                    ; (free ?from)
                    (not (free ?to))
                    (increase (timestep) 1)
                )
)

; a wait action if no train has arrived yet. 
(:action wait
    :parameters ()
    :precondition (and )
    :effect (and (increase (timestep) 1))
)

)
