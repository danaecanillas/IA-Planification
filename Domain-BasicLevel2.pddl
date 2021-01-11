(define (domain planner2)
    (:requirements :adl :typing)
    
    (:types content - item)
    
    (:predicates
        (predecessor ?before - content ?after - content)
        ; (watch ?x - content)
        (seen ?x - content)
    )

    (:action watch
        :parameters (?x - content)
        :precondition (forall (?before - content) (imply (predecessor ?before ?x) (seen ?before)))
        :effect (seen ?x)
    )
    
    ; (:action watch_predecessor 
    ;     :parameters (?before - content ?after - content)
    ;     :precondition (and (predecessor ?before ?after) (watch ?after))
    ;     :effect (watch ?before)
    ; )
)