(define (domain domain1-fully-optimized-reallocation)

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
    (lastfreePath ?x - trackpart) ; last free trackpart x of path L
)

; Action to move train unit over the arrival path towards the shunting yard
(:action move-on-arrival-to-switch
    :parameters (?train - trainunit ?from ?next ?to - trackpart)
    :precondition (and
        (not (hasBeenParked ?train))
        (at ?train ?from)
        (onPath ?from)
        (free ?next)
        (free ?to)
        (switch ?to)
        (nextTo ?from ?next))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
    )
)

; action to move a trainunit to a neighbouring trackpart on a track, to park it
(:action move-from-switch-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and
        ; (not (hasBeenParked ?train))
        (not (parkedOn ?train ?t))
        (at ?train ?from)
        (switch ?from)
        (free ?to)
        (onTrack ?to ?t)
        (nextTo ?from ?to))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to)) 
        (parkedOn ?train ?t)
    )
)

; move to last free node of track
(:action move-to-end-of-track
    :parameters (?train - trainunit ?from ?toprev ?to - trackpart ?t - track)
    :precondition (and
        ; (not (hasBeenParked ?train))
        ; (parkedOn ?train ?t)
        (at ?train ?from)
        (nextTo ?toprev ?to)
        (free ?to)
        (lastfree ?to ?t)
        (onTrack ?from ?t)
        (onTrack ?toprev ?t)
        (onTrack ?to ?t))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (lastfree ?toprev ?t)   (not (lastfree ?to ?t))
        (hasBeenParked ?train)
    )
)

; (:action move-from-switch-to-end-of-track
;     :parameters (?train - trainunit ?from ?toprev ?to - trackpart ?t - track)
;     :precondition (and
;         (at ?train ?from)
;         (free ?to)
;         (lastfree ?to ?t)
;         (nextTo ?toprev ?to)
;         (onTrack ?to ?t)
;         (switch ?from))
;     :effect (and
;         (at ?train ?to)         (not (at ?train ?from))
;         (free ?from)            (not (free ?to))
;         (lastfree ?toprev ?t)   (not (lastfree ?to ?t))
;         (hasBeenParked ?train)
;         (parkedOn ?train ?t))
; )

(:action move-along-track-backwards
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and
        (parkedOn ?train ?t)
        (at ?train ?from)
        (free ?to)
        (nextTo ?to ?from)
        (onTrack ?from ?t)
        (onTrack ?to ?t)
        (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to)))
)

; action to move a trainunit to out of a track, and reset the parkedOn predicate
(:action move-from-track-to-switch
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and
        (parkedOn ?train ?t)
        (at ?train ?from)
        (free ?to)
        (nextTo ?to ?from)
        (onTrack ?from ?t)
        (switch ?to)
        (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (not (parkedOn ?train ?t)))
)

; Can only move back to departure if all trains have been parked.
(:action move-to-departure
    :parameters (?train - trainunit ?from ?toprev ?to - trackpart)
    :precondition (and
        (at ?train ?from)
        (free ?to)
        (lastfreePath ?to)
        (nextTo ?to ?toprev)
        (onPath ?to)
        (switch ?from)
        (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (lastfreePath ?toprev)  (not (lastfreePath ?to)))
)
)
