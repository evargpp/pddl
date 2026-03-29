(define (domain world-of-docks)
    (:requirements :adl)
    (:types
        samochod sterta zuraw miejsce kontener
    )

    (:predicates
        (miejsce-zuraw ?miejsce - miejsce ?zuraw - zuraw)
        (miejsce-sterta ?miejsce - miejsce ?sterta - sterta)
        (samochod-postoj ?miejsce - miejsce ?sterta - sterta)
        (droga ?start - miejsce ?koniec - miejsce)
        (kontener-na-stercie ?sterta ?kontener)
        (kontener-na-kontenerze ?sterta ?kontener ?kontener)
        (kontener-na-gorze ?sterta ?kontener)
        (sterta-pusta ?sterta)
    )

    (:action podnies
        :parameters (?kontener - kontener ?zuraw - zuraw)
        :precondition (and
        )
        :effect (and
        )
    )

    (:action opusc-na-sterte
        :parameters (?kontener - kontener ?sterta - sterta)
        :precondition (and
        )
        :effect (and
        )
    )

    (:action opusc-na-samochod
        :parameters (?kontener - kontener ?samochod - samochod)
        :precondition (and
        )
        :effect (and
        )
    )

    (:action jedz
        :parameters (?start - miejsce ?koniec - miejsce ?samochod - samochod)
        :precondition (and
        )
        :effect (and
        )
    )
)