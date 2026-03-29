(define (problem p1)
    (:domain world-of-docks)
    (:objects
        m1 m2 m3 m4 - miejsce
        z1 z2 z31 z32 z4 - zuraw
        s11 s12 s2 s31 s32 s4 - sterta
        a b c d e f - kontener
    )
    (:init
        (miejsce-zuraw m1 z1)
        (miejsce-zuraw m2 z2)
        (miejsce-zuraw m3 z31)
        (miejsce-zuraw m3 z32)
        (miejsce-zuraw m4 z4)

        (miejsce-sterta m1 s11)
        (miejsce-sterta m1 s12)
        (miejsce-sterta m2 s2)
        (miejsce-sterta m3 s31)
        (miejsce-sterta m3 s32)
        (miejsce-sterta m4 s4)

        (kontener-na-stercie s11 d)
        (kontener-na-kontenerze s11 a d)
        (kontener-na-gorze s11 a)

        (kontener-na-stercie s12 e)
        (kontener-na-kontenerze s12 b e)
        (kontener-na-gorze s12 b)

        (sterta-pusta s2)

        (sterta-pusta s31)
        (sterta-pusta s32)

        (kontener-na-stercie s4 f)
        (kontener-na-kontenerze s4 c f)
        (kontener-na-gorze s4 c)

        (droga m1 m2)
        (droga m2 m1)

        (droga m2 m4)
        (droga m4 m2)

        (droga m4 m3)
        (droga m3 m4)

        (droga m3 m1)
        (droga m1 m3)

        (samochod m2)
    )
    (:goal
        (and
            (kontener-na-stercie s12 e)
            (kontener-na-kontenerze s12 b e)
            (kontener-na-kontenerze s12 a b)
            (kontener-na-gorze s12 a)
      )
    )
)