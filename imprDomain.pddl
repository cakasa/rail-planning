(define (domain imprDomain)

(:requirements :adl)

(:types
    trackpart track trainunit - object
    icm virm sng slt - trainunit ; these are the different types of train units
    LIFO free - track
)

(:predicates 
    (next ?x ?y - trackpart) ;track part x next to track part y
    (prev ?x ?y - trackpart)  ;track part x previous from track part y
    (onTrack ?x - trackPart ?y - track) ;track part x on track y
    (at ?x - trainunit ?y - trackpart) ;train unit x on track part y
    (hasBeenParked ?x - trainunit) ;true if x is parked on some track 
    (free ?x - trackpart) ;trackpart x has nothing parked there
    (parkedOn ?x - trainunit ?y - track) ; indicates x parked on track y
    (onPath ?x) ;trackpart x is on the arrival/departure path L
    (switch ?x) ;trackpart x is a switch
    (last-track ?x - trackpart)
)

; ; action to move a trainunit to a neighbouring trackpart on a track, to park it 
; (:action move-to-track
;     :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
;     :precondition (and (at ?train ?from) (free ?to) 
;                     (nextTo ?from ?to) (onTrack ?to ?t)
;                     (onTrack ?to ?t)
;                     (switch ?from))
;     :effect (and (at ?train ?to) (not (at ?train ?from)) 
;                     (free ?from) (not (free ?to)) 
;                     (hasBeenParked ?train) (parkedOn ?train ?t))
; )
; action to move a trainunit to a neighbouring trackpart on a track, to park it 
(:action move-to-LIFO-track
    :parameters (?train - trainunit ?from ?to ?last ?prev - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (or (next ?from ?to) (prev ?from ?to)) (onTrack ?to ?t)
                    (switch ?from) (last-track ?last)
                    (prev ?last ?prev)
                    (onTrack ?last ?t)) 
    :effect (and (at ?train ?last) (not (at ?train ?from)) 
                    (free ?from) (not (free ?last)) 
                    (not (last-track ?last)) (last-track ?prev)
                    (hasBeenParked ?train) (parkedOn ?train ?t))
)

; action to move a trainunit to out of a track, and reset the parkedOn predicate, used for shuffling trains to different tracks
(:action switch-track
    :parameters (?train - trainunit ?from ?switch ?to - trackpart ?t1 ?t2 - track )
    :precondition (and (at ?train ?from) (free ?to) (free ?switch) 
                    (or (next ?from ?switch) (prev ?from ?switch)) (onTrack ?from ?t1)
                    (switch ?switch)
                    (or (next ?switch ?to) (prev ?switch ?to)) (onTrack ?to ?t2)
                    (not (forall (?unit - trainunit) (hasBeenParked ?unit))))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (parkedOn ?train ?t1))
                    (parkedOn ?train ?t2))
)

; ; action to move a trainunit along a track
; (:action move-along-track
;     :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
;     :precondition (and (at ?train ?from) (free ?to) 
;                     (nextTo ?from ?to) (onTrack ?from ?t)
;                     (onTrack ?to ?t))
;     :effect (and (at ?train ?to) (not (at ?train ?from))
;                     (free ?from) (not (free ?to)))
; )
; action to move a trainunit along a track
(:action move-along-LIFO-track
    :parameters (?train - trainunit ?from ?last ?prev - trackpart ?t - track)
    :precondition (and (at ?train ?from) (onTrack ?from ?t)
                    (prev ?last ?prev)
                    (onTrack ?last ?t))
    :effect (and (at ?train ?last) (not (at ?train ?from))
                    (free ?from) (not (free ?last))
                    (not (last-track ?last)) (last-track ?prev))
)
; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) (last-track ?to)
                    (or (next ?from ?to) (prev ?from ?to)) (onPath ?to)
                    (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) (last-track ?from)
                    (not (last-track ?to)))
)

(:action move-to-departure2
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to)
                    (or (next ?from ?to) (prev ?from ?to)) (onPath ?to)
                    (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)

; Action to move train unit over the arrival path towards the shunting yard
(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (at ?train ?from) (free ?to) 
                    (or (next ?from ?to) (prev ?from ?to)) (not (hasBeenParked ?train))
                    (onPath ?from))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)))
)

; Can only move to track if all trains have been parked to distinguish from switch-track
(:action move-from-track-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (or (next ?from ?to) (prev ?from ?to)) (onTrack ?from ?t)
                    (switch ?to)
                    (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (parkedOn ?train ?t)))
)
)