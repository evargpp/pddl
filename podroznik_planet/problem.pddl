(define (problem p1)
    (:domain world-of-stars)
    (:objects
	P1 P2 P3 P4 P5 P6 P7 
	D1 D2 D3 D4 D5 D6
        sa sb sc sd se sp
        g1 g2 g3 g4 g5 g6
    )
    (:init
	(wajcha-na-planecie D1 P1)
	(wajcha-na-planecie D1 P4)
	
	(wajcha-na-planecie D3 P2)
	
        (wajcha-na-planecie D4 P4)

	(wajcha-na-planecie D5 P5)

	(wajcha-na-planecie D6 P6)

        (teleport D6 P6 P7)
        (teleport D6 P7 P6)

        (teleport D5 P1 P6)
        (teleport D5 P6 P1)

        (teleport D1 P1 P2)
        (teleport D1 P2 P1)

        (teleport-wolny P2 P3)
        (teleport-wolny P3 P2)

        (teleport D3 P3 P4)
        (teleport D3 P4 P3)

        (teleport D4 P3 P5)
        (teleport D4 P5 P3)

        (teleport-wolny P4 P5)
        (teleport-wolny P5 P4)

        (blokada P4 D1)

        (przycisk P5)

        (podroznik P1)


        (sasiad g1 g2)
        (sasiad g1 g5)
        (sasiad g1 g4)

        (sasiad g2 g1)
        (sasiad g2 g3)
        (sasiad g2 g4)

        (sasiad g3 g2)
        (sasiad g3 g6)
        (sasiad g3 g4)

        (sasiad g4 g1)
        (sasiad g4 g2)
        (sasiad g4 g3)
        (sasiad g4 g5)
        (sasiad g4 g6)

        (sasiad g5 g1)
        (sasiad g5 g6)
        (sasiad g5 g4)

        (sasiad g6 g5)
        (sasiad g6 g3)
        (sasiad g6 g4)

        (pusty g1)
        (gwiazda g2 sd)
        (gwiazda g3 se)
        (gwiazda g4 sc)
        (gwiazda g5 sb)
        (gwiazda g6 sa)

        (punkt-gwiazdowy P6)
    )
    (:goal
	(and
            (podroznik P7)
            (pusty g4)
            (gwiazda g1 se)
            (gwiazda g2 sa)
            (gwiazda g3 sb)
            (gwiazda g5 sd)
            (gwiazda g6 sc)
	)
    )
)