(define (domain servicing-no-fluents)

(:requirements :adl)

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
    (needsService ?x - trainunit ?y - service); train unit x needs service y
    (hasDeparted ?x - trainunit) ; train unit x has departed
)

(:action service-train
    :parameters (?train - trainunit ?front ?back - trackpart ?track - track ?service - service)
    :precondition (and 
        (isServiceTrack ?track ?service)
        (beginsAt ?train ?front)
        (endsAt ?train ?back)
        (onTrack ?front ?track)
        (onTrack ?back ?track)
        (needsService ?train ?service)
        (not (hasDeparted ?train))
    )
    :effect (and 
        (not (needsService ?train ?service))
    )
)

; move a train to a switch
(:action move-to-switch
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
                    
                    (not (hasDeparted ?train))
                    (switch ?frontTo)
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back))
                 (beginsAt ?train ?frontTo) (endsAt ?train ?backTo)
                 (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (free ?back) (not (free ?frontTo))
))

; move a train unit along a switch node to a track
(:action move-along-switch
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
                    
                    (not (hasDeparted ?train))
                    (switch ?switch)
                    (at ?train ?switch)
                    (onTrack ?frontTo ?t)
                    (imply (not (= ?front ?switch)) (onTrack ?front ?t))
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back))
                 (beginsAt ?train ?frontTo) (endsAt ?train ?backTo) 
                 (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (free ?back) (not (free ?frontTo))
))

(:action move-from-switch
    :parameters (?train - trainunit ?front ?back ?frontTo ?backTo - trackpart ?track - track)
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

                    (not (hasDeparted ?train))
                    (switch ?back)
                    (onTrack ?frontTo ?track)
                    (imply (not (= ?front ?back)) (onTrack ?front ?track))
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back))
                 (beginsAt ?train ?frontTo) (endsAt ?train ?backTo) 
                 (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (free ?back) (not (free ?frontTo))
                    (hasBeenParked ?train)
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
                    
                    (not (hasDeparted ?train))
                    (onTrack ?frontTo ?t)
                    (onTrack ?front ?t)
                    (onTrack ?back ?t)
                    (onTrack ?backTo ?t)
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back))
                 (beginsAt ?train ?frontTo) (endsAt ?train ?backTo)
                 (not (beginsAt ?train ?front)) (not (endsAt ?train ?back)) 
                    (free ?back) (not (free ?frontTo))
                    (hasBeenParked ?train)
))

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
                    
                    (onPath ?frontTo)
                    (forall (?unit - trainunit) (hasBeenParked ?unit))
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back)) 
                    (free ?back) (not (free ?frontTo))
                    (beginsAt ?train ?frontTo) (endsAt ?train ?backTo) 
                    (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
                    (hasDeparted ?train)
))

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

                    (not (hasBeenParked ?train))
                    (onPath ?front)
    )
    :effect (and (at ?train ?frontTo) (not (at ?train ?back)) 
                    (free ?back) (not (free ?frontTo))
                    (beginsAt ?train ?frontTo) (endsAt ?train ?backTo)
                    (not (beginsAt ?train ?front)) (not (endsAt ?train ?back))
))

; flips the direction of the train, i.e. it starts moving from its end.
(:action flip-train-direction
    :parameters (?train - trainunit ?front ?back - trackpart)
    :precondition (and 
        (beginsAt ?train ?front)
        (endsAt ?train ?back)
    )
    :effect (and
        (beginsAt ?train ?back)
        (endsAt ?train ?front)
        (not (beginsAt ?train ?front))
        (not (endsAt ?train ?back))
    )
)
)
