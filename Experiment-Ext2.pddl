(define (problem test-03)
    (:domain planner3)
    (:objects s1e1 s1e2 s1e3 s2e1 s2e2 s2e3 s2e4 film film2 extra - content)
    (:init
        (predecessor s1e1 s1e2)
        (predecessor s1e2 s1e3)
        
        (predecessor s2e1 s2e2)
        (predecessor s2e2 s2e3)
        (predecessor s2e3 s2e4)

        (predecessor s1e3 film)
        (predecessor s2e4 film)

        (paralels film film2)
        (paralels film2 film)

        (paralels extra s2e3)
        (paralels s2e3 extra)
        

        (to_watch film)
    )

    (:goal (and (forall (?c - content) (imply (to_watch ?c)(seen ?c)))))
)
