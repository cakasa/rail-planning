(define (domain domain1-no-realloc)

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

(:action move-from-switch-to-switch
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and
        (at ?train ?from)
        (switch ?from)
        (switch ?to)
        (forall (?t - trackpart) (or (not (switch ?t)) (and (not (= ?t ?from)) (switch ?t) (free ?t)))))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to)))
)

(:action move-from-switch-to-track
    :parameters (?train - trainunit ?from ?toprev ?to - trackpart ?t - track)
    :precondition (and
        (not (hasBeenParked ?train))
        (not (parkedOn ?train ?t))
        (at ?train ?from)
        (free ?to)
        (lastfree ?to ?t)
        (nextTo ?toprev ?to)
        (onTrack ?to ?t)
        (switch ?from))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (when (not (switch ?toprev)) (lastfree ?toprev ?t))
        (not (lastfree ?to ?t))
        (hasBeenParked ?train)
        (parkedOn ?train ?t))
)

(:action move-from-track-to-switch
    :parameters (?train - trainunit ?from ?next ?to - trackpart ?t - track)
    :precondition (and
        (parkedOn ?train ?t)
        (at ?train ?from)
        (onTrack ?from ?t)
        (nextTo ?next ?from)
        (free ?next)
        (free ?to)
        (switch ?to)
        (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and
        (at ?train ?to)         (not (at ?train ?from))
        (free ?from)            (not (free ?to))
        (not (parkedOn ?train ?t)))
)

(:action move-from-switch-to-departure
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
