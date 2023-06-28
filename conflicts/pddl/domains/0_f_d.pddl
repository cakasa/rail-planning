(define (domain domain0)

(:requirements :adl :fluents)

(:types
    trackpart
    track
    trainunit
)

;INFO (:constants) are available accross all problems
(:predicates 
    (nextTo ?x ?y - trackpart) ;track part x next to other track part y
    (onPath ?x - trackPart) ;trackpart x is on the arrival/departure path L
    (onTrack ?x - trackPart ?y - track) ;track part x on track y
    (at ?x - trainunit ?y - trackpart) ;train unit x on track part y
    (hasBeenParked ?x - trainunit) ;true if x is parked on some track 
    (free ?x - trackpart) ;trackpart x has nothing parked there
    (parkedOn ?x - trainunit ?y - track) ; indicates x parked on track y
)
(:functions
    (arrive ?x - trainunit)
    (depart ?x - trainunit)
    (trainsOnTrack ?x - track)
    (trainSurface ?x - train)
    (trackSize ?x - track)
    (trainsDeeper ?x - train)
    (trackDepart ?x - track)
    (prevTrackDepart ?x - train)
)


; action to move a trainunit to a neighbouring trackpart, that must be connected
(:action move-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onTrack ?to ?t)
                    ; (forall (?othertrain - trainunit) 
                    ;     (or (not (parkedOn ?othertrain ?t))
                    ;     (>= (depart ?othertrain) (depart ?train))))
                    (>= (trackDepart ?t) (depart ?train))
                    )
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (hasBeenParked ?train) (parkedOn ?train ?t)
                    (assign (prevTrackDepart ?train) (trackDepart ?t))
                    (assign (trackDepart ?t) (depart ?train))
                    (assign (trainsDeeper ?train) (trainsOnTrack ?t))
                    (increase (trainsOnTrack ?t) 1)
                    )
)

; action to move a trainunit to a neighbouring trackpart, that must be connected
(:action move-on-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onTrack ?to ?t)
                    ) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to))
                    )
)

; action to move a trainunit to a neighbouring trackpart, that must be connected
(:action move-from-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onTrack ?from ?t)
                    (not (onTrack ?to ?t))
                    ) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (hasBeenParked ?train) (parkedOn ?train ?t)
                    (assign (trackDepart ?t) (depart ?train))
                    (decrease (trainsOnTrack ?t) 1)
                    )
)

; action to move a trainunit to a neighbouring trackpart, that must be connected
(:action move-to-other-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (onTrack ?to ?t) (hasBeenParked ?train)
                    ; (forall (?parkedtrain - trainunit) 
                    ;     (or (not (parkedOn ?parkedtrain ?t))
                    ;     (>= (depart ?parkedtrain) (depart ?train))))
                    )
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (parkedOn ?train ?t))
)

; (forall (?parkedtrain - trainunit)
;     (when (parkedOn ?parkedtrain ?t)
;         (not (parkedOn ?parkedtrain ?t))))



                    ; (forall (?parkedtrain - trainunit)
                    ;     when (parkedOn ?parkedtrain ?t)
                    ;         (departure ?train  ?parkedtrain)
                    ; )

; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) 
                    (forall (?unit - trainunit) (hasBeenParked ?unit))
                    (not (exists (?track - track) (onTrack ?to ?track))))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to))
                    )
)

(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (nextTo ?from ?to) (not (hasBeenParked ?train)) 
                    (onPath ?to)) 
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)
)
