(define (problem p1)
	(:domain world-of-hanoi)
	(:objects
		x y z - palik
		k1 k2 k3 k4 k5 k6 - krazek
	)
	(:init
		(mniejszy k4 k5)
		(mniejszy k3 k5)
		(mniejszy k2 k5)
		(mniejszy k1 k5)

		(mniejszy k3 k4)
		(mniejszy k2 k4)
		(mniejszy k1 k4)

		(mniejszy k2 k3)
		(mniejszy k1 k3)
		(mniejszy k1 k2)

		(na-paliku k5 x)
		(na-paliku k4 x)
		(na-paliku k3 x)
		(na-paliku k2 x)
		(na-paliku k1 x)
	)
	(:goal
		(and
			(na-paliku k5 z)
			(na-paliku k4 z)
			(na-paliku k3 z)
			(na-paliku k2 z)
			(na-paliku k1 z)
		)
	)
)