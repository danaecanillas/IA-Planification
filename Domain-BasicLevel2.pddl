(define (domain planner2)
    (:requirements :adl :typing)
    
    (:types content - item)
    
    (:predicates
        (predecessor ?before - content ?after - content)
        (to_watch ?x - content)
        (seen ?x - content)
    )

    (:action watch
        :parameters (?x - content)
        :precondition (forall (?before - content) (and (imply (predecessor ?before ?x) (seen ?before)) (to_watch ?x)))
        :effect (seen ?x)
    )

    (:action mark_to_watch_predecessor 
        :parameters (?before - content ?x - content)
        :precondition (and (predecessor ?before ?x) (to_watch ?x))
        :effect (to_watch ?before)
    )
    
    
)