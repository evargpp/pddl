(define (domain world-of-docks)
    (:requirements :adl)
    (:types
        sterta zuraw miejsce kontener
    )

    (:predicates
        (miejsce-zuraw ?miejsce - miejsce ?zuraw - zuraw)
        (miejsce-sterta ?miejsce - miejsce ?sterta - sterta)
        (samochod ?miejsce - miejsce)
        (droga ?start - miejsce ?koniec - miejsce)
        (kontener-na-stercie ?sterta ?kontener)
        (kontener-na-kontenerze ?sterta ?kontener ?kontener)
        (kontener-na-gorze ?sterta ?kontener)
        (sterta-pusta ?sterta)
        (ramie-zurawia ?zuraw ?kontener)
    )

    (:action podnies-ze-sterty
        :parameters (?kontener - kontener ?zuraw - zuraw ?sterta - sterta)
        :precondition (and
            (kontener-na-gorze ?sterta ?kontener)
        )
        :effect (and
            (ramie-zurawia ?zuraw ?kontener)
        )
    )

;    (:action podnies-z-samochodu
;        :parameters (?kontener - kontener ?zuraw - zuraw ?samochod - samochod)
;        :precondition (and
;        )
;        :effect (and
;        )
;    )

;    (:action opusc-na-sterte
;        :parameters (?kontener - kontener ?sterta - sterta)
;        :precondition (and
;        )
;        :effect (and
;        )
;    )

;    (:action opusc-na-samochod
;        :parameters (?kontener - kontener ?samochod - samochod)
;        :precondition (and
;        )
;        :effect (and
;        )
;    )

    (:action jedz
        :parameters (?start - miejsce ?koniec - miejsce)
        :precondition (and
            (samochod ?start)
            (droga ?start ?koniec)
        )
        :effect (and
            (not (samochod ?start))
            (samochod ?koniec)
        )
    )
)