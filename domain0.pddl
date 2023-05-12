(define (domain domain0)

(:requirements :adl :derived-predicates)

(:types
    trackpart
    track
    trainunit
)

;INFO (:constants) are available accross all problems
(:predicates 
    (prev ?x ?y - trackpart); track part x is prev of track part y
    (next ?x ?y - trackpart) ; track part x next to other track part y
    (onTrack ?x - trackpart ?y - track) ; track part x on track y
    (at ?x - trainunit ?y - trackpart); train unit x on track part y
    (hasBeenParked ?x - trainunit) ; true if x is parked on some track 
    (free ?x - trackpart) ; track part x has nothing parked there
    (reachable-on-arrival ?x ?y - trackpart) ; track part y is reachable from track part x
    (parkedOn ?x - trainunit ?y - track) ; indicates x parked on track y
)

(:derived (reachable-on-arrival ?x - trackpart ?y - trackpart)
    (or
        (and (prev ?x ?y) (free ?y))
        (exists (?next - trackpart) (and (prev ?x ?next) (free ?next) (reachable-on-arrival ?next ?y)))
    )
)

; action to move a trainunit to a neighbouring trackpart, that must be connected
(:action move-to-tree
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (next ?from ?to) (onTrack ?to ?t)) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (hasBeenParked ?train) (parkedOn ?train ?t))
)

; action to move a trainunit to a neighbouring trackpart, that must be connected
(:action move-to-other-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (next ?from ?to) (onTrack ?to ?t) (hasBeenParked ?train)) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (parkedOn ?train ?t))
)

; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (next ?from ?to) 
                    (forall (?unit - trainunit) (hasBeenParked ?unit))
                    (not (exists (?track - track) (onTrack ?to ?track))))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)

(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (not (hasBeenParked ?train))
        (reachable-on-arrival ?from ?to)
    ) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)
)
