(define (problem Ext1)
    (:domain plannerExt1)
    (:objects s1e1 s1e2 s1e3 s2e1 s2e2 s2e3 s2e4 - content
              d1 d2 d3 d4 d5 d6 d7 - day)
    (:init
        (predecessor s1e1 s1e2)
        (predecessor s1e2 s1e3)
        (predecessor s2e1 s2e2)
        (predecessor s2e2 s2e3)
        (predecessor s2e3 s2e4)

        (= (dayOrder d1) 1)
        (= (dayOrder d2) 2)
        (= (dayOrder d3) 3)
        (= (dayOrder d4) 4)
        (= (dayOrder d5) 5)
        (= (dayOrder d6) 6)
        (= (dayOrder d7) 7)

    )

    (:goal (and (forall (?c - content) (seen ?c))))
)
