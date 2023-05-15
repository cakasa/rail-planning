(define (domain domain0-derived-reachable)

(:requirements :adl :derived-predicates)

(:types
    trackpart
    track
    trainunit
)

;INFO (:constants) are available accross all problems
(:predicates 
    (prev ?x ?y - trackpart); trackpart x is prev of trackpart y
    (next ?x ?y - trackpart) ; trackpart x next to other trackpart y
    (onTrack ?x - trackpart ?y - track) ; trackpart x on track y
    (at ?x - trainunit ?y - trackpart); trainunit x on trackpart y
    (hasBeenParked ?x - trainunit) ; true if x is parked on some track 
    (free ?x - trackpart) ; trackpart x has nothing parked there
    (reachable-on-arrival ?x ?y - trackpart) ; trackpart y is reachable from trackpart x
    (parkedOn ?x - trainunit ?y - track) ; indicates x parked on track y
)

; derived predicate to check if trackpart y is reachable from trackpart x on arrival
(:derived (reachable-on-arrival ?x ?y - trackpart)
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
    :precondition (and (at ?train ?from) (free ?to)
                    (not (hasBeenParked ?train))
                    (reachable-on-arrival ?from ?to)) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)
)
