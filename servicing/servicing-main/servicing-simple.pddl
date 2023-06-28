(define (domain servicing-simple)

(:requirements :adl)

(:types
    trackpart track trainunit service - object
    icm virm sng slt - trainunit ; these are the different types of train units
)

(:predicates 
    (nextTo ?x ?y - trackpart) ;track part x next to other track part y
    (onTrack ?x - trackPart ?y - track) ;track part x on track y
    (onPath ?x) ;trackpart x is on the arrival/departure path L
    (at ?x - trainunit ?y - trackpart) ;train unit x on track part y
    (free ?x - trackpart) ;trackpart x has nothing parked there
    (hasBeenParked ?x - trainunit) ;true if x is parked on some track 
    (isServiceTrack ?x - track ?y - service) ; track x is a track for service y
    (needsService ?x - trainunit ?y - service); train unit x needs service y
    (hasDeparted ?x - trainunit) ; train unit x has departed
)

; action to service a train for a service
(:action service-train
    :parameters (?train - trainunit ?at - trackpart ?track - track ?service - service)
    :precondition (and
        (at ?train ?at)
        (isServiceTrack ?track ?service)
        (onTrack ?at ?track)
        (needsService ?train ?service)
        (not (hasDeparted ?train))
    )
    :effect (and 
        (not (needsService ?train ?service))
    )
)

; action to move a trainunit to a neighbouring trackpart on a track, to park it 
(:action move
    :parameters (?train - trainunit ?from ?to - trackpart ?trackTo - track)
    :precondition (and 
                    (at ?train ?from)
                    (free ?to) 
                    (nextTo ?from ?to)
                    (onTrack ?to ?trackTo)
                    (not (hasDeparted ?train)))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (hasBeenParked ?train))
)

; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and 
                    (at ?train ?from)
                    (free ?to) 
                    (nextTo ?from ?to)
                    (onPath ?to)
                    (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to))
                    (hasDeparted ?train))
)

; Action to move train unit over the arrival path towards the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and 
                    (at ?train ?from)
                    (free ?to) 
                    (nextTo ?from ?to)
                    (not (hasDeparted ?train))
                    (not (hasBeenParked ?train))
                    (onPath ?to))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)
)