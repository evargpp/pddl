(define (domain world-of-numerki)
  (:requirements :strips)

  (:types klocek pole)

  (:predicates
    (uklad ?p - pole ?k - klocek)
    (pusty ?p - pole)
    (sasiad ?p1 - pole ?p2 - pole)
  )

  (:action przesun
    :parameters (?k - klocek ?s - pole ?t - pole)
    :precondition
      (and
        (uklad ?s ?k)
        (pusty ?t)
        (sasiad ?s ?t)
      )
    :effect
      (and
        (not (uklad ?s ?k))
        (uklad ?t ?k)
        (pusty ?s)
        (not (pusty ?t))
      )
  )
)