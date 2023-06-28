(define (domain domain0)

(:requirements :adl :fluents)

(:types
    trackpart
    track
    trainunit
)

;INFO (:constants) are available accross all problems
(:predicates 
    (driver ?x - trainunit)
    (nextToArrival ?x ?y - trackpart) ; track part x next to other track part y
    (nextToDeparture ?x ?y - trackpart)  ; track part x next to other track part y
    (shuntTrack ?x - trackpart)
    (onTrack ?x - trackPart ?y - track) ;track part x on track y
    (at ?x - trainunit ?y - trackpart) ;train unit x on track part y
    (hasBeenParked ?x - trainunit) ;true if x is parked on some track
    (hasDeparted ?x - trainunit)
    (free ?x - trackpart) ;trackpart x has nothing parked there
    (parkedOn ?x - trainunit ?y - track) ; indicates x parked on track y
    (lastArrival ?x - trainunit)
    (firstDeparture ?x - trainunit)
    (canPark ?x - trackpart)
    (nextTrainArriving ?x ?y - trainunit)
    (nextTrainDeparting ?x ?y - trainunit)
    (departing)
    (canSwitch)
    (station ?x - trackpart)
)
(:functions
    (arrive ?x - trainunit)
    (depart ?x - trainunit)
    (depth ?x - trackpart)
)

(:action move-on-arrival
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (driver ?train) (not (departing)) (at ?train ?from) 
                  (free ?to) (nextToArrival ?from ?to) (not (shuntTrack ?to)))
    :effect (and (at ?train ?to) (not (at ?train ?from)) (free ?from) (not (free ?to)))
)

(:action move-to-track
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (driver ?train) (not (departing)) (at ?train ?from) (free ?to) 
                    (nextToArrival ?from ?to) (not (onTrack ?from ?t)) (onTrack ?to ?t)
                    (forall (?othertrain - trainunit) 
                        (or (not (parkedOn ?othertrain ?t))
                        (>= (depart ?othertrain) (depart ?train))))
                    )
    :effect (and (at ?train ?to) (not (at ?train ?from)) (free ?from) (not (free ?to)))
)

(:action move-on-track-arrival
    :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
    :precondition (and (driver ?train) (not (departing)) (at ?train ?from) (free ?to) (nextToArrival ?from ?to) 
                  (onTrack ?from ?t) (onTrack ?to ?t))
    :effect (and (at ?train ?to) (not (at ?train ?from)) (free ?from) (not (free ?to)))
)

; Will create an issue when we allow for reallocations:
; when the track is full, the parking spot will be pushed towards the switch
; , now being of the track it is hard to 'recover', and might collide with 
; other tracks. Consider having a track argument in the canPark predicate,
; so when a train moves out of the track it can easily be moves back with the 
; help of nextToDeparture predicate.
(:action park-train
    :parameters (?train - trainunit ?loc ?newparkingspot - trackpart ?t - track)
    :precondition (and (not (departing)) (not (hasBeenParked ?train)) (canPark ?loc) (driver ?train) (at ?train ?loc) (onTrack ?loc ?t) (nextToDeparture ?loc ?newparkingspot))
    :effect (and (hasBeenParked ?train) (parkedOn ?train ?t) (canSwitch) (not (canPark ?loc)) (canPark ?newparkingspot))
)

(:action driver-switch-train
    :parameters (?from ?to - trainunit)
    :precondition (and (canSwitch) (hasBeenParked ?from) (driver ?from) (or 
        (and (nextTrainArriving ?from ?to) (not (departing))) 
        (and (nextTrainDeparting ?from ?to) (departing))))
    :effect (and (not (driver ?from)) (driver ?to) (not (canSwitch)))
)

(:action driver-switch-train-start-departing
    :parameters (?from ?to - trainunit)
    :precondition (and (canSwitch) (not (departing)) (driver ?from) (lastArrival ?from) (hasBeenParked ?from) (firstDeparture ?to))
    :effect (and (departing) (not (driver ?from)) (driver ?to))
)

(:action move-to-departure
    :parameters (?train - trainunit ?from ?to - trackpart)
    :precondition (and (departing) (driver ?train) (at ?train ?from) (free ?to) (nextToDeparture ?from ?to))
    :effect (and (at ?train ?to) (not (at ?train ?from)) (free ?from) (not (free ?to)))
)

(:action depart-train
    :parameters (?train - trainunit ?loc - trackpart)
    :precondition (and (departing) (driver ?train) (station ?loc) (at ?train ?loc))
    :effect (and (free ?loc) (hasDeparted ?train) (canSwitch))
)

; (:action park_train
;     :parameters (?train - trainunit ?location ?newparkingspot - trackpart ?t - track)
;     :precondition (and (at ?train ?location) (onTrack ?location ?t) (onTrack ?newparkingspot ?t) (canPark ?location)
;         (nextToDeparture ?location ?newparkingspot)
;     )
;     :effect (and (hasBeenParked ?train) (not (canPark ?location)) (canPark ?newparkingspot))
; )

; action to move a trainunit to a neighbouring trackpart, that must be connected
; (:action move-on-arrival-in-shunting-track
;     :parameters (?train - trainunit ?from ?to - trackpart ?t - track)
;     :precondition (and (at ?train ?from) (free ?to) 
;                     (nextToArrival ?from ?to) (onTrack ?to ?t) (hasBeenParked ?train)
;                     )
;     :effect (and (at ?train ?to) (not (at ?train ?from)) 
;                     (free ?from) (not (free ?to)) 
;                     (parkedOn ?train ?t))
; )

; (forall (?parkedtrain - trainunit)
;     (when (parkedOn ?parkedtrain ?t)
;         (not (parkedOn ?parkedtrain ?t))))



                    ; (forall (?parkedtrain - trainunit)
                    ;     when (parkedOn ?parkedtrain ?t)
                    ;         (departure ?train  ?parkedtrain)
                    ; )

; ; Can only move back to departure if all trains have been parked. 
; (:action move-to-departure
;     :parameters (?train - trainunit ?from ?to - trackpart)
;     :precondition (and (at ?train ?from) (free ?to) 
;                     (nextTo ?from ?to) 
;                     (forall (?unit - trainunit) (hasBeenParked ?unit))
;                     (not (exists (?track - track) (onTrack ?to ?track))))
;     :effect (and (at ?train ?to) (not (at ?train ?from)) 
;                     (free ?from) (not (free ?to))
;                     )
; )

; (:action move-on-arrival
;     :parameters (?train - trainunit ?from ?to - trackpart)
;     :precondition (and (at ?train ?from) (free ?to) 
;                     (nextTo ?from ?to) (not (hasBeenParked ?train))) 
;     :effect (and (at ?train ?to) (not (at ?train ?from)) 
;                     (free ?from) (not (free ?to)))
; )
)