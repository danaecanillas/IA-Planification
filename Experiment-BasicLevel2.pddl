(define (problem test-02)
    (:domain planner2)
    (:objects s1e1 s1e2 s1e3 s2e1 s2e2 s2e3 s2e4 - content)
    (:init
        (predecessor s1e1 s1e2)
        (predecessor s1e2 s1e3)
        
        (predecessor s2e1 s2e2)
        (predecessor s2e2 s2e3)
        (predecessor s2e3 s2e4)

        ; (to_watch s1e3)
        (to_watch s2e4)
    )

    (:goal (and (forall (?c - content) (imply (to_watch ?c)(seen ?c)))))
)
