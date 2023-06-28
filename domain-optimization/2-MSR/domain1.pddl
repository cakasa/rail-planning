(define (domain domain1)

(:requirements :adl :action-costs :conditional-effects)

(:types
    trackpart track trainunit - object
    icm virm sng slt - trainunit ; these are the different types of train units
)

(:predicates 
    (nextTo ?x ?y - trackpart) ;track part x next to other track part y
    (onTrack ?x - trackPart ?y - track) ;track part x on track y
    (at ?x - trainunit ?y - trackpart) ;train unit x on track part y
    (hasBeenParked ?x - trainunit) ;true if x is parked on some track 
    (free ?x - trackpart) ;trackpart x has nothing parked there
    (parkedOn ?x - trainunit ?y - track) ; indicates x parked on track y
    (onPath ?x - trackpart) ;trackpart x is on the arrival/departure path L
    (switch ?x - trackpart) ;trackpart x is a switch
    (currtrain ?x - trainunit) ; current train unit x that is being moved
)

(:functions
    (total-cost)
)

(:action switch-to-next-train
    :parameters (?prev ?next - trainunit)
    :precondition (and
        (currtrain ?prev)
        (not (currtrain ?next)))
    :effect (and
        (currtrain ?next)
        (not (currtrain ?prev))
        (increase (total-cost) 1))
)

; action to move a trainunit to a neighbouring trackpart on a track, to park it 
(:action move-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to)
                    (nextTo ?from ?to) (onTrack ?to ?t)
                    (switch ?from)
                    (not (hasBeenParked ?train))
                    (currtrain ?train))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (hasBeenParked ?train) (parkedOn ?train ?t)
                    (increase (total-cost) 1))
)

(:action reallocate-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to)
                    (nextTo ?from ?to) (onTrack ?to ?t)
                    (switch ?from)
                    (hasBeenParked ?train)
                    (currtrain ?train))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (parkedOn ?train ?t)
                    (increase (total-cost) 2))
)

; action to move a trainunit to out of a track, and reset the parkedOn predicate
(:action move-from-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onTrack ?from ?t)
                    (switch ?to)
                    (currtrain ?train))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (parkedOn ?train ?t))
                    (increase (total-cost) 1))
)

; action to move a trainunit along a track
(:action move-along-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onTrack ?from ?t)
                    (onTrack ?to ?t)
                    (currtrain ?train))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (increase (total-cost) 1))
)

; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onPath ?to)
                    (forall (?unit - trainunit) (hasBeenParked ?unit))
                    (currtrain ?train))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to))
                    (increase (total-cost) 1))
)

; Action to move train unit over the arrival path towards the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (not (hasBeenParked ?train))
                    (onPath ?from)
                    (currtrain ?train))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to))
                    (increase (total-cost) 1))
)
)
