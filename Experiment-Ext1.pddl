(define (problem Ext1)
    (:domain plannerExt1)
    (:objects c1 c2 c3 c4 c5 - content
              d1 d2 d3 d4 - day)
    (:init
        (predecessor c1 c2)
        (predecessor c2 c3)
        (predecessor c3 c4)
        (predecessor c3 c5)

        (previous d1 d2)
        (previous d1 d3)
        (previous d1 d4)
        (previous d2 d3)
        (previous d2 d4)
        (previous d3 d4)

    )

    ;(:goal (and (forall (?c - content) (seen ?c))))
    (:goal (and (seen c1) (seen c5)))
)
