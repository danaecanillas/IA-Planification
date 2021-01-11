(define (problem Ext4)
    (:domain plannerExt4)
    (:objects c1 c2 c3 c4 c5 c6 c7 - content
              d1 d2 d3 d4 d5 d6 d7 - day)
    (:init

        (= (currentDay) 1)

        (= (contentDuration c1) 50)
        (= (contentDuration c2) 70)
        (= (contentDuration c3) 10)
        (= (contentDuration c4) 100)
        (= (contentDuration c5) 65)
        (= (contentDuration c6) 115)
        (= (contentDuration c7) 38)

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
        (= (dayOrder d5) 5)
        (= (dayOrder d6) 6)
        (= (dayOrder d7) 7)

        (= (dayCapacity d1) 200)
        (= (dayCapacity d2) 200)
        (= (dayCapacity d3) 200)
        (= (dayCapacity d4) 200)
        (= (dayCapacity d5) 200)
        (= (dayCapacity d6) 200)
        (= (dayCapacity d7) 200)


    )

    ;(:goal (and (forall (?c - content) (seen ?c))))
    (:goal (and (seen c5) (seen c6) (seen c7)))
)
