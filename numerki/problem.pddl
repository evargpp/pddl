(define (problem p1)
	(:domain world-of-numerki)

	(:objects
		klocek1 klocek2 klocek3 klocek4 klocek5 klocek6 klocek7 klocek8 - klocek
		pole1 pole2 pole3 pole4 pole5 pole6 pole7 pole8 pole9 - pole
	)

	(:init
		;; graf sąsiedztwa
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