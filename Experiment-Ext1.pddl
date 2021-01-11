(define (problem Ext1)
    (:domain plannerExt1)
    (:objects c1 c2 c3 c4 - content
              d1 d2 d3 d4 - day)
    (:init
        (predecessor c1 c2)
        (predecessor c2 c3)
        (predecessor c3 c4)

        (previous d1 d2)
        (previous d1 d3)
        (previous d1 d4)
        (previous d2 d3)
        (previous d2 d4)
        (previous d3 d4)

        ;(= (dayOrder d1) 1)
        ;(= (dayOrder d2) 2)
        ;(= (dayOrder d3) 3)
        ;(= (dayOrder d4) 4)
        ;(= (dayOrder d5) 5)
        ;(= (dayOrder d6) 6)
        ;(= (dayOrder d7) 7)

    )

    (:goal (and (forall (?c - content) (seen ?c))))
)
