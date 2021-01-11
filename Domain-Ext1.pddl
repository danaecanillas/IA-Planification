(define (domain plannerExt1)
    (:requirements :adl :typing :strips)
    
    (:types content - item
            day - item
    )
    
    (:functions
        (dayOrder ?d - day)
        ; (dayCapacity ?d - day)
        ; (dayAssigned ?d - day)
    )

    (:predicates
        (predecessor ?before - content ?after - content)
        (seen ?x - content)
        (dayAssigned ?d - day)
    )

    (:action watch
        :parameters (?x - content ?d - day)
        :precondition (and (forall (?before - content) (imply (predecessor ?before ?x) (seen ?before)))
                           (and (forall (?dprev - day) (imply (or  (> (dayOrder ?dprev) (dayOrder ?d)) (not (dayAssigned ?dprev))) )) ) )
        ;:precondition (seen ?x)
        :effect (and (seen ?x) (dayAssigned ?d))
    )
    

)