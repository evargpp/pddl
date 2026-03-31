(define (problem p1)
	(:domain world-of-merry)
	(:objects
		A B C D E F G H I - pokoj
		zielony czerwony pomaranczowy rozowy niebieski - kolor
	)
	(:init
		(drzwi A B pomaranczowy)

		(drzwi B D pomaranczowy)

		(drzwi A C czerwony)
		(drzwi C A czerwony)

		(drzwi E H czerwony)
		(drzwi H E czerwony)

		(drzwi C E zielony)
		(drzwi E C zielony)

		(drzwi D F zielony)
		(drzwi F D zielony)

		(drzwi E F niebieski)
		(drzwi F E niebieski)

		(drzwi F I niebieski)
		(drzwi I F niebieski)

		(drzwi H I niebieski)
		(drzwi I H niebieski)

		(drzwi F G rozowy)

		(kulka1 A zielony)
		(kulka1 B rozowy)
		(kulka1 C pomaranczowy)
		(kulka1 C niebieski)
		(kulka1 D zielony)
		(kulka1 D czerwony)
		(kulka1 E niebieski)
		(kulka1 E zielony)
		(kulka2 F niebieski)
		(kulka1 H zielony)
		(kulka1 H czerwony)
		(kulka1 I pomaranczowy)
		(kulka1 I niebieski)

		(merry F)
	)
	(:goal
		(merry A)
	)
)