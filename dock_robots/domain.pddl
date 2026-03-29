(define (domain world-of-docks)
    (:requirements :adl)
    (:types
        sterta zuraw miejsce kontener samochod
    )

    (:predicates
        (miejsce-zuraw ?miejsce - miejsce ?zuraw - zuraw)
        (miejsce-sterta ?miejsce - miejsce ?sterta - sterta)
        (samochod ?miejsce - miejsce ?samochod - samochod)
        (droga ?start - miejsce ?koniec - miejsce)
        (kontener-na-stercie ?sterta ?kontener)
        (kontener-na-kontenerze ?sterta ?kontener ?kontener)
        (kontener-na-gorze ?sterta ?kontener)
        (sterta-pusta ?sterta)
        (ramie-zurawia ?zuraw ?kontener)
        (kontener-na-samochodzie ?kontener ?samochod)
    )

    (:action podnies-ze-sterty-gdy-jest-cos-pod-nim
        :parameters (
            ?kontener - kontener 
            ?zuraw - zuraw 
            ?sterta - sterta 
            ?miejsce - miejsce
            ?kontener-pod-spodem - kontener
        )
        :precondition (and
            (kontener-na-gorze ?sterta ?kontener)
            (kontener-na-kontenerze ?sterta ?kontener ?kontener-pod-spodem)
            (miejsce-sterta ?miejsce ?sterta)
            (miejsce-zuraw ?miejsce ?zuraw)
            (not (exists (?k1) (ramie-zurawia ?zuraw ?k1)))
        )
        :effect (and
            (not (kontener-na-gorze ?sterta ?kontener))
            (kontener-na-kontenerze ?sterta ?kontener ?kontener-pod-spodem)
            (kontener-na-gorze ?sterta ?kontener-pod-spodem)
            (ramie-zurawia ?zuraw ?kontener)
        )
    )

    (:action podnies-ze-sterty-gdy-jest-tylko-jeden
        :parameters (
            ?kontener - kontener 
            ?zuraw - zuraw 
            ?sterta - sterta 
            ?miejsce - miejsce
        )
        :precondition (and
            (kontener-na-gorze ?sterta ?kontener)
            (kontener-na-stercie ?sterta ?kontener)
            (miejsce-sterta ?miejsce ?sterta)
            (miejsce-zuraw ?miejsce ?zuraw)
            (not (exists (?k1) (ramie-zurawia ?zuraw ?k1)))
        )
        :effect (and
            (not (kontener-na-gorze ?sterta ?kontener))
            (kontener-na-stercie ?sterta ?kontener)
            (sterta-pusta ?sterta)
            (ramie-zurawia ?zuraw ?kontener)
        )
    )


    (:action podnies-z-samochodu
        :parameters (
            ?kontener - kontener 
            ?zuraw - zuraw 
            ?samochod - samochod
            ?miejsce - miejsce
        )
        :precondition (and
            (miejsce-zuraw ?miejsce ?zuraw)
            (samochod ?miejsce ?samochod)
            (kontener-na-samochodzie ?kontener ?samochod)
            (not (exists (?k1) (ramie-zurawia ?zuraw ?k1)))
        )
        :effect (and
            (not (kontener-na-samochodzie ?kontener ?samochod))
            (ramie-zurawia ?zuraw ?kontener)
        )
    )


    (:action opusc-na-sterte-gdy-cos-juz-na-niej-jest
        :parameters (?kontener - kontener ?sterta - sterta ?zuraw - zuraw ?miejsce - miejsce ?kontener-na-gorze - kontener)
        :precondition (and
            (ramie-zurawia ?zuraw ?kontener)
            (miejsce-sterta ?miejsce ?sterta)
            (miejsce-zuraw ?miejsce ?zuraw)
            (kontener-na-gorze ?sterta ?kontener-na-gorze)
        )
        :effect (and
            (not (ramie-zurawia ?zuraw ?kontener))
            (not (kontener-na-gorze ?sterta ?kontener-na-gorze))
            (kontener-na-kontenerze ?sterta ?kontener ?kontener-na-gorze)
            (kontener-na-gorze ?sterta ?kontener)
        )
    )

    (:action opusc-na-sterte-gdy-jest-pusta
        :parameters (?kontener - kontener ?sterta - sterta ?zuraw - zuraw ?miejsce - miejsce)
        :precondition (and
            (ramie-zurawia ?zuraw ?kontener)
            (miejsce-sterta ?miejsce ?sterta)
            (miejsce-zuraw ?miejsce ?zuraw)
            (sterta-pusta ?sterta)
        )
        :effect (and
            (not (ramie-zurawia ?zuraw ?kontener))
            (not (sterta-pusta ?sterta))

            (kontener-na-stercie ?sterta ?kontener)
            (kontener-na-gorze ?sterta ?kontener)
        )
    )

    (:action opusc-na-samochod
        :parameters (
            ?kontener - kontener 
            ?samochod - samochod
            ?zuraw - zuraw 
            ?miejsce - miejsce
        )
        :precondition (and
            (ramie-zurawia ?zuraw ?kontener)
            (miejsce-zuraw ?miejsce ?zuraw)
            (samochod ?miejsce ?samochod)
            (not (exists (?k1) (kontener-na-samochodzie ?k1 ?samochod)))
        )
        :effect (and
            (not (ramie-zurawia ?zuraw ?kontener))
            (kontener-na-samochodzie ?kontener ?samochod)
        )
    )


    (:action jedz
        :parameters (?start - miejsce ?koniec - miejsce ?samochod - samochod)
        :precondition (and
            (samochod ?start ?samochod)
            (or
                (droga ?start ?koniec)
                (droga ?koniec ?start)
            )
        )
        :effect (and
            (not (samochod ?start ?samochod))
            (samochod ?koniec ?samochod)
        )
    )
)