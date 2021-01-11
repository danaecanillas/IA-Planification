(define (domain plannerExt4)
    (:requirements :adl :typing )
    
    (:types content - item
            day - item
    )
    
    (:functions
        (dayCapacity ?d - day)
        (dayOrder ?d - day)
        (contentDuration ?c - content)
        (currentDay)
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
        :precondition (and (not (< (dayOrder ?d) (currentDay)))
                           (not (> (contentDuration ?c) (dayCapacity ?d)))
                           (forall (?d2 - day) (imply (< (dayOrder ?d2) (dayOrder ?d)) (> (contentDuration ?c) (dayCapacity ?d2))) )
                           (allPreSeen ?c)
                           (forall (?c2 - content) (imply(parallel ?c ?c2) (allPreSeen ?c2)) )
                           (forall (?c2 - content) (imply(predecessor ?c2 ?c) (allParSeen ?c2)) )
                      )
        :effect (and (seen ?c) (increase (currentDay) (- (dayOrder ?d) (currentDay))) (decrease (dayCapacity ?d) (contentDuration ?c)))
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