(define (problem Ext3)
    (:domain plannerExt3)
    (:objects c1 c2 c3 c4 c5 c6 c7 - content
              d1 d2 d3 d4 - day)
    (:init
        (predecessor c1 c3)
        (predecessor c2 c5)
        (predecessor c3 c6)
        (predecessor c4 c7)

        (parallel c2 c3)
        (parallel c3 c2)
        (parallel c3 c4)
        (parallel c4 c3)

        (= (dayOrder d1) 1)
        (= (dayOrder d2) 2)
        (= (dayOrder d3) 3)
        (= (dayOrder d4) 4)
        ; (= (dayOrder d5) 5)
        ; (= (dayOrder d6) 6)
        ; (= (dayOrder d7) 7)

        (= (dayAssigned d1) 0)
        (= (dayAssigned d2) 0)
        (= (dayAssigned d3) 0)
        (= (dayAssigned d4) 0)
        ; (= (dayAssigned d5) 0)
        ; (= (dayAssigned d6) 0)
        ; (= (dayAssigned d7) 0)

        (= (dayCapacity) 3)


    )

    ;(:goal (and (forall (?c - content) (seen ?c))))
    (:goal (and (seen c5) (seen c6) (seen c7)))
)
