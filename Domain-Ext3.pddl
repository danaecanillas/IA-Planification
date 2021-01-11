(define (domain plannerExt1)
    (:requirements :adl :typing )
    
    (:types content - item
            day - item
    )
    
    (:functions
        (dayOrder ?d - day)
        (dayCapacity ?d - day)
        (dayAssigned ?d - day)
    )

    (:predicates
        (predecessor ?c1 - content ?c2 - content)
        (seen ?c - content)
        (dayAssigned ?d - day)
        (previous ?d1 - day ?d2 - day)
    )

    (:action watch
        :parameters (?c - content ?d - day)
        :precondition (and (forall (?c2 - content) (imply (predecessor ?c2 ?c) (seen ?c2)))
                        ;    (forall (?d2 - day) (imply (previous ?d2 ?d) (dayAssigned ?d2)))
                           (not (dayAssigned ?d)) ;)
                          (forall (?dprev - day) (imply (or (> (dayOrder ?dprev) (dayOrder ?d)) (not (dayAssigned ?dprev))) )) )
        :effect (and (seen ?c) (dayAssigned ?d))
    )

)