(define (domain domain1-no-reallocation)

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
    (validPath ?x ?y - trackpart) ; path x to y is valid connected path
)

; (:action check-path
;     :parameters (?x ?y ?z - trackpart)
;     :precondition (or
;         (nextTo ?x ?z)
;         (and (nextTo ?x ?y) (validPath ?y ?z))
;     )
;     :effect (and
;         (validPath ?x ?z)
;     )
; )

(:action check-path
    :parameters (?from ?to - trackpart)
    :precondition (or
        (nextTo ?from ?to)
        (exists (?next - trackpart) (and (nextTo ?from ?next) (validPath ?next ?to)))
    )
    :effect (and
        (validPath ?from ?to)
    )
)


(:action move-from-arrival-to-track
    :parameters (?train - trainunit ?from ?next ?toprev ?to - trackpart ?t - track)
    :precondition (and
        (not (hasBeenParked ?train))
        (not (parkedOn ?train ?t))
        (at ?train ?from)
        (onPath ?from)
        (free ?next)
        (free ?to)
        (lastfree ?to ?t)
        (nextTo ?toprev ?to)
        (onTrack ?to ?t)
        (validPath ?from ?to))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (when (not (switch ?toprev)) (lastfree ?toprev ?t))
        (not (lastfree ?to ?t))
        (hasBeenParked ?train)
        (parkedOn ?train ?t))
)

(:action move-from-track-to-departure
    :parameters (?train - trainunit ?from ?next ?toprev ?to - trackpart ?t - track)
    :precondition (and
        (parkedOn ?train ?t)
        (at ?train ?from)
        (onTrack ?from ?t)
        (nextTo ?next ?from)
        (free ?next)
        (free ?to)
        (nextTo ?to ?toprev)
        (onPath ?to)
        (lastfreePath ?to)
        (validPath ?to ?from)
        (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (lastfreePath ?toprev)  (not (lastfreePath ?to))
        (not (parkedOn ?train ?t)))
)
)
