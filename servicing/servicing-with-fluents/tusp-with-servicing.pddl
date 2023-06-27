(define (domain tusp-with-servicing)

(:requirements :adl :fluents)

(:types
    trackpart track trainunit service - object
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
    (beginsAt ?x - trainunit ?y - trackpart) ; train unit x begins at trackpart y
    (endsAt ?x - trainunit ?y - trackpart) ; train unit x ends at trackpart y
    (isServiceTrack ?x - track ?y - service) ; track x is a track for service y
    (isBeingServiced ?x - trainunit) ;train unit x is currently being serviced
    (isServicedFor ?x - trainunit ?y - service); train unit x is currently being serviced for y
)

(:functions
    (timestep) ; this keeps trsack of the global time (in timesteps)
    (arrive ?x - trainunit) ;this is the arrival time (a certain time step) of train unit x
    (depart ?x - trainunit) ;this is the departure arrival time (a certain time step) of train unit x
    (serviceDuration ?x - trainunit ?y - service) ;this is the duration of service y for train x 
)

(:action start-train-servicing
    :parameters (?train - trainunit ?front ?back - trackpart ?track - track ?service - service)
    :precondition (and 
        (isServiceTrack ?track ?service)
        (beginsAt ?train ?front)
        (endsAt ?train ?back)
        (onTrack ?front ?track)
        (onTrack ?back ?track)
        (not (isBeingServiced ?train))
        (> (serviceDuration ?train ?service) 0)
    )
    :effect (and 
        (isBeingServiced ?train)
        (isServicedFor ?train ?service)
    )
)

(:action service-train
    :parameters (?train - trainunit ?service - service)
    :precondition (and 
        (isServicedFor ?train ?service)
        (> (serviceDuration ?train ?service) 0)
    )
    :effect (and
        (decrease (serviceDuration ?train ?service) 1)
        (increase (timestep) 1)
    )
)

(:action end-train-servicing
    :parameters (?train - trainunit ?service - service)
    :precondition (and 
        (isServicedFor ?train ?service)
        (= (serviceDuration ?train ?service) 0)
    )
    :effect (and 
        (not (isBeingServiced ?train))
        (not (isServicedFor ?train ?service))
    )
)

; move a train unit from a switch node to a track 
(:action move-from-switch-to-track
    :parameters (?train - trainunit ?front ?back ?frontTo ?backTo ?switch - trackpart ?t - track)
    :precondition (and
                    (beginsAt ?train ?front)
                    (endsAt ?train ?back) 
                    (nextTo ?front ?frontTo)
                    (nextTo ?back ?backTo)
                    (at ?train ?front)
                    (at ?train ?back)
                    (not (at ?train ?frontTo))
                    (free ?frontTo)
                    (imply (not (= ?front ?back)) (at ?train ?backTo))
                    (not (isBeingServiced ?train))
                    
                    (switch ?switch)
                    (at ?train ?switch)
                    (onTrack ?switch ?t)
                    (onTrack ?frontTo ?t)
                    (imply (not (= ?front ?switch)) (onTrack ?front ?t))
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back))
                 (beginsAt ?train ?frontTo) (endsAt ?train ?backTo) 
                 (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (free ?back) (not (free ?frontTo))
                    (hasBeenParked ?train)
                    (increase (timestep) 1)
))

; move a train along a given track
(:action move-along-track
    :parameters (?train - trainunit ?front ?back ?frontTo ?backTo - trackpart ?t - track)
    :precondition (and 
                    
                    (beginsAt ?train ?front)
                    (endsAt ?train ?back) 
                    (nextTo ?front ?frontTo)
                    (nextTo ?back ?backTo)
                    (at ?train ?front)
                    (at ?train ?back)
                    (not (at ?train ?frontTo))
                    (free ?frontTo)
                    (imply (not (= ?front ?back)) (at ?train ?backTo))
                    (not (isBeingServiced ?train))

                    (onTrack ?frontTo ?t)
                    (onTrack ?front ?t)
                    (onTrack ?back ?t)
                    (onTrack ?backTo ?t)
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back))
                 (beginsAt ?train ?frontTo) (endsAt ?train ?backTo)
                 (not (beginsAt ?train ?front)) (not (endsAt ?train ?back)) 
                    (free ?back) (not (free ?frontTo)) 
                    (increase (timestep) 1))
)

; move a train to the path, once all trains have been parked
(:action move-to-departure
    :parameters (?train - trainunit ?front ?back ?frontTo ?backTo - trackpart)
    :precondition (and 
                    
                    (beginsAt ?train ?front)
                    (endsAt ?train ?back) 
                    (nextTo ?front ?frontTo)
                    (nextTo ?back ?backTo)
                    (at ?train ?front)
                    (at ?train ?back)
                    (not (at ?train ?frontTo))
                    (free ?frontTo)
                    (imply (not (= ?front ?back)) (at ?train ?backTo))
                    (not (isBeingServiced ?train))
                    
                    (onPath ?frontTo)
                    (forall (?unit - trainunit) (hasBeenParked ?unit))
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back)) 
                    (free ?back) (not (free ?frontTo))
                    (beginsAt ?train ?frontTo) (endsAt ?train ?backTo) 
                    (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (assign (depart ?train) (timestep))
                    (increase (timestep) 1))
)

; move a train from the arrival path into the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?front ?back ?frontTo ?backTo - trackpart)
    :precondition (and
                    
                    (beginsAt ?train ?front)
                    (endsAt ?train ?back) 
                    (nextTo ?front ?frontTo)
                    (nextTo ?back ?backTo)
                    (at ?train ?front)
                    (at ?train ?back)
                    (not (at ?train ?frontTo))
                    (free ?frontTo)
                    (imply (not (= ?front ?back)) (at ?train ?backTo))
                    (not (isBeingServiced ?train))

                    (not (hasBeenParked ?train))
                    (onPath ?front)
                    (>= (timestep) (arrive ?train))
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back)) 
                    (free ?back) (not (free ?frontTo))
                    (beginsAt ?train ?frontTo) (endsAt ?train ?backTo)
                    (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (increase (timestep) 1))
)

; flips the direction of the train, i.e. it starts moving from its end.
(:action flip-train-direction
    :parameters (?train - trainunit ?front ?back - trackpart)
    :precondition (and 
        (beginsAt ?train ?front)
        (endsAt ?train ?back)
        (not (isBeingServiced ?train))
        (>= (timestep) (arrive ?train))
    )
    :effect (and
        (beginsAt ?train ?back)
        (endsAt ?train ?front)
        (not (beginsAt ?train ?front))
        (not (endsAt ?train ?back))
    )
)

; a wait action if no train has arrived yet. 
(:action wait
    :parameters ()
    :precondition (forall (?train - trainunit) (< (timestep) (arrive ?train)))
    :effect (and (increase (timestep) 1))
)
)
