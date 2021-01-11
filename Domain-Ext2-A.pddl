(define (domain planner3)
    (:requirements :adl :typing)
    
    (:types content - item)
    
    (:predicates
        (predecessor ?before - content ?after - content)
        (paralels ?x - content ?y - content)
        (to_watch ?x - content)
        (to_watch_paralel ?x - content)
        (all_pre_watched ?x - content)
        (seen ?x - content)
    )

    (:action watch
        :parameters (?x - content)
        :precondition (and (forall (?y - content) (and (imply (predecessor ?y ?x) (seen ?y)) (to_watch ?x)))
                           (forall (?y - content) (and (imply (paralels ?y ?x) (or (all_pre_watched ?y) (seen ?y))) (to_watch ?x)))
                            ; (forall (?y - content) (and (imply (paralels ?y ?x) (seen ?y)) (to_watch ?x)))
        )
        :effect (seen ?x)
    )

    (:action mark_to_watch_predecessor 
        :parameters (?before - content ?x - content)
        :precondition (and (predecessor ?before ?x) (to_watch ?x))
        :effect (to_watch ?before)
    )

    (:action mark_to_watch_paralels 
        :parameters (?y - content ?x - content)
        :precondition (and (paralels ?y ?x) (to_watch ?x))
        :effect (to_watch ?y)
    )

    (:action mark_all_pre_seen
        :parameters (?x - content)
        :precondition (and (forall (?y - content) (and (imply (predecessor ?y ?x) (seen ?y)) (to_watch ?x))))
        :effect (all_pre_watched ?x)
    )
    
    
    
)