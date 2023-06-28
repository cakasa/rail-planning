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
    (free-track ?x - track)
    (last-track ?x - trackpart)
)

; action to move a trainunit to a neighbouring trackpart on a track, to park it 
(:action move-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (or (next ?from ?to) (prev ?from ?to)) (onTrack ?to ?t)
                    (onTrack ?to ?t) (free-track ?t)
                    (switch ?from))
    :effect (and (at ?train ?to) (not (at ?train ?from)) 
                    (free ?from) (not (free ?to)) 
                    (hasBeenParked ?train) (parkedOn ?train ?t))
)

; action to move a trainunit to out of a track, and reset the parkedOn predicate, used for shuffling trains to different tracks
(:action switch-track
    :parameters (?train - trainunit ?from ?switch ?to - trackpart ?t1 ?t2 - track )
    :precondition (and (at ?train ?from) (free ?to) (free ?switch) 
                    (or (next ?from ?switch) (prev ?from ?switch)) (onTrack ?from ?t1)
                    (switch ?switch) (free-track ?t1) (free-track ?t2)
                    (or (next ?switch ?to) (prev ?switch ?to)) (onTrack ?to ?t2)
                    (not (forall (?unit - trainunit) (hasBeenParked ?unit))))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (parkedOn ?train ?t1))
                    (parkedOn ?train ?t2))
)

; ; action to move a trainunit along a track
(:action move-along-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (or (next ?from ?to) (prev ?from ?to)) (onTrack ?from ?t)
                    (onTrack ?to ?t) (free-track ?t))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to)))
)
; Can only move to track if all trains have been parked to distinguish from switch-track
(:action move-from-track-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) 
                    (or (next ?from ?to) (prev ?from ?to)) (onTrack ?from ?t)
                    (switch ?to) (free-track ?t)
                    (forall (?unit - trainunit) (hasBeenParked ?unit)))
    :effect (and (at ?train ?to) (not (at ?train ?from))
                    (free ?from) (not (free ?to))
                    (not (parkedOn ?train ?t)))
)
; switches between LIFO tracks
(:action switch-LIFO-track
    :parameters (?train - trainunit ?from ?prev ?switch ?newLast ?last - trackpart ?t1 ?t2 - track)
    :precondition (and (at ?train ?from) (onTrack ?from ?t1)
                    (onTrack ?last ?t2) (prev ?from ?prev) (prev ?last ?newLast)
                    (free ?switch) (switch ?switch) (last-track ?prev)
                    (last-track ?last)
    )
    :effect (and (at ?train ?last) (not (at ?train ?from))
                (free ?from) (last-track ?from) (not (last-track ?prev))
                (not (last-track ?last)) (last-track ?newLast) (not (parkedOn ?train ?t1))
                (parkedOn ?train ?t2) (not (free ?last))
    )
)
; action to move to switch from a LIFO track
(:action move-to-switch-LIFO-track
    :parameters (?train - trainunit ?from ?prev ?con ?switch - trackpart ?t - track)
    :precondition (and (at ?train ?from) (onTrack ?from ?t)
                    (onTrack ?con ?t) (prev ?from ?prev)
                    (onTrack ?prev ?t) (last-track ?prev)
                    (prev ?con ?switch) (free ?switch) (switch ?switch))
    :effect (and (at ?train ?switch) (not (at ?train ?from))
                    (free ?from) (not (free ?switch))
                    (not (last-track ?prev)) (last-track ?from)
                    (not (parkedOn ?train ?t)))
)
; action to move a train to the switch, when last-track is next to the switch
(:action move-to-switch-LIFO-track-last
    :parameters (?train - trainunit ?from  ?switch - trackpart ?t - track)
    :precondition (and (at ?train ?from) (onTrack ?from ?t)
                    (prev ?from ?switch) (switch ?switch)
                    (free ?switch) (not (free-track ?t)))
    :effect (and (at ?train ?switch) (not (at ?train ?from))
                    (free ?from) (not (free ?switch))
                    (last-track ?from)
                    (not (parkedOn ?train ?t)))
)

; action to move a trainunit to the last-track of a LIFO track
(:action move-to-LIFO-track
    :parameters (?train - trainunit ?from ?to ?prev ?last - trackpart ?t - track)
    :precondition (and (at ?train ?from) (free ?to) (not (last-track ?to))
                    (or (next ?from ?to) (prev ?from ?to)) (onTrack ?to ?t)
                    (switch ?from) (last-track ?last)
                    (prev ?last ?prev)
                    (onTrack ?last ?t)) 
    :effect (and (at ?train ?last) (not (at ?train ?from)) 
                    (free ?from) (not (free ?last)) 
                    (not (last-track ?last)) (last-track ?prev)
                    (hasBeenParked ?train) (parkedOn ?train ?t))
)

; action to move a trainunit to the last-track that is next to the switch 
(:action move-to-LIFO-track-onetrack
    :parameters (?train - trainunit ?from ?last - trackpart ?t - track)
    :precondition (and (at ?train ?from)
                    (or (next ?from ?last) (prev ?from ?last)) (onTrack ?last ?t)
                    (switch ?from) (last-track ?last))
    :effect (and (at ?train ?last) (not (at ?train ?from)) 
                    (free ?from) (not (free ?last)) 
                    (not (last-track ?last)) 
                    (hasBeenParked ?train) (parkedOn ?train ?t))
)
; Can only move back to departure if all trains have been parked. 
(:action move-to-departure
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


)