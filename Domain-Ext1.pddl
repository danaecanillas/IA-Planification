(define (domain plannerExt1)
    (:requirements :adl :typing )
    
    (:types content - item
            day - item
    )
    
    ;(:functions
        ;(dayOrder ?d - day)
        ; (dayCapacity ?d - day)
        ; (dayAssigned ?d - day)
    ;)

    (:predicates
        (predecessor ?before - content ?after - content)
        (seen ?x - content)
        (dayAssigned ?d - day)
        (previous ?d1 - day ?d2 - day)
    )

    (:action watch
        :parameters (?c - content ?d - day)
        :precondition (and (forall (?before - content) (imply (predecessor ?before ?c) (seen ?before)))
                           (forall (?dprev - day) (imply (previous ?dprev ?d) (dayAssigned ?dprev)) ) )
        ;                   (forall (?dprev - day) (imply (or (> (dayOrder ?dprev) (dayOrder ?d)) (not (dayAssigned ?dprev))) )) )
        :effect (and (seen ?c) (dayAssigned ?d))
    )

)