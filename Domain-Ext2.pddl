(define (domain plannerExt2)
    (:requirements :adl :typing )
    
    (:types content - item
            day - item
    )
    
    (:functions
        (dayCapacity)
        (dayOrder ?d - day)
        (dayAssigned ?d - day)
    )

    (:predicates
        (seen ?c - content)
        (predecessor ?c1 - content ?c2 - content)
        (parallel ?c1 - content ?c2 - content)
        (allPreSeen ?c - content)
        (allParSeen ?c - content)
    )

    (:action watch
        :parameters (?c - content ?d - day)
        :precondition (and (> (dayCapacity) (dayAssigned ?d))
                           (forall (?d2 - day) (imply (< (dayOrder ?d2) (dayOrder ?d)) (= (dayAssigned ?d2) (dayCapacity))) )
                           (allPreSeen ?c)
                           (forall (?c2 - content) (imply(parallel ?c ?c2) (allPreSeen ?c2)) )
                           (forall (?c2 - content) (imply(predecessor ?c2 ?c) (allParSeen ?c2)) )
                      )
        :effect (and (seen ?c) (increase (dayAssigned ?d) 1))
    )

    (:action setAllPreSeen
        :parameters (?c - content)
        :precondition (forall (?c2 - content) (imply (predecessor ?c2 ?c) (seen ?c2)) )
        :effect (allPreSeen ?c)
    )

    (:action setAllParSeen
        :parameters (?c - content)
        :precondition (forall (?c2 - content) (imply (parallel ?c2 ?c) (seen ?c2)) )
        :effect (allParSeen ?c)
    )

)