(define (domain planner)
    (:requirements :adl :typing)
    
    (:types content - item)
    
    (:predicates
        (predecessor ?before - content ?after - content)
        (seen ?c - content)
    )

    (:action watch
        :parameters (?c - content)
        :precondition (forall (?before - content) (imply (predecessor ?before ?c) (seen ?before)))
        :effect (seen ?c)
    )

)