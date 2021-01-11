(define (domain planner)
    (:requirements :adl :typing)
    (:types content - item)
    (:predicates
        (predecessor ?before - content ?after - content)  ;; x precede a y
        (watch ?before - content))

    (:action watch_predecessor :parameters (?before - content ?after - content)
        :precondition (and (predecessor ?before ?after) (watch ?after))
        :effect (watch ?before))
)
