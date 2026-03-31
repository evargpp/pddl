(define (problem p1)
	(:domain world-of-merry)
	(:objects
		A B C D E F G H I - pokoj
		zielony czerwony pomaranczowy rozowy niebieski - kolor
		klocek1 klocek2 klocek3 klocek4 klocek5 klocek6 klocek7 klocek8 - klocek
		pole1 pole2 pole3 pole4 pole5 pole6 pole7 pole8 pole9 - pole

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

		(zagadka A)

		(merry F)

		(sasiad pole1 pole2)
		(sasiad pole1 pole4)

		(sasiad pole2 pole1)
		(sasiad pole2 pole3)
		(sasiad pole2 pole5)

		(sasiad pole3 pole2)
		(sasiad pole3 pole6)

		(sasiad pole4 pole1)
		(sasiad pole4 pole5)
		(sasiad pole4 pole7)

		(sasiad pole5 pole2)
		(sasiad pole5 pole4)
		(sasiad pole5 pole6)
		(sasiad pole5 pole8)

		(sasiad pole6 pole3)
		(sasiad pole6 pole5)
		(sasiad pole6 pole9)

		(sasiad pole7 pole4)
		(sasiad pole7 pole8)

		(sasiad pole8 pole7)
		(sasiad pole8 pole5)
		(sasiad pole8 pole9)

		(sasiad pole9 pole6)
		(sasiad pole9 pole8)

		;; stan początkowy
		(uklad pole1 klocek5)
		(uklad pole2 klocek4)
		(uklad pole3 klocek1)
		(uklad pole4 klocek8)
		(pusty pole5)
		(uklad pole6 klocek3)
		(uklad pole7 klocek7)
		(uklad pole8 klocek2)
		(uklad pole9 klocek6)

	)
	(:goal
		(and
			(merry G)
			
			(uklad pole1 klocek1)
			(uklad pole2 klocek2)
			(uklad pole3 klocek3)
			(uklad pole4 klocek4)
			(uklad pole5 klocek5)
			(uklad pole6 klocek6)
			(uklad pole7 klocek7)
			(uklad pole8 klocek8)
			(pusty pole9)
		)
	)
)