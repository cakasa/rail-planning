(define (domain domain1-extended)

(:requirements :adl)

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
    (onPath ?x) ;trackpart x is on the arrival/departure path L
    (switch ?x) ;trackpart x is a switch
    (lastfree ?x - trackpart ?y - track) ; last free trackpart x of track y
)

; move from swiitch to last free node of track
(:action move-to-end-of-track
    :parameters (?train - trainunit ?from ?toprev ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (lastfree ?to ?t)
                    (nextTo ?toprev ?to) (onTrack ?to ?t)
                    (switch ?from)
                )
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (lastfree ?to ?t)) (lastfree ?toprev ?t)
                    (hasBeenParked ?train) (parkedOn ?train ?t))
)

; move from start node of track to switch
(:action move-from-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?to ?from) (onTrack ?from ?t)
                    (switch ?to))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (parkedOn ?train ?t)))
)

; move from track node closer to switch
(:action move-along-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?to ?from) (onTrack ?from ?t)
                    (onTrack ?to ?t))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to)))
)

; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?to ?from) (onPath ?to)
                    (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)

; Action to move train unit over the arrival path towards the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (not (hasBeenParked ?train))
                    (onPath ?from))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)
)
