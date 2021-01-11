(define (problem 1) (:domain planner)
    (:objects episode1 episode2 episode3 episode4 episode5 episode6 episode7 - content)
    (:init
        (predecessor episode1 episode2)
        (predecessor episode2 episode3)
        (predecesor episode3 episode4)
        (predecesor episode5 episode6)
        
        (watch episode2)
        (watch episode4)
        (watch episode7)
    )

    (:goal (and (forall (?c - content) (watch ?c)))))
