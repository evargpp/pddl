(define (domain world-of-hanoi)
	(:requirements :adl)
	(:predicates
		(mniejszy ?x ?y)
		(na-paliku ?krazek ?palik)
	)
	(:types
		krazek palik
	)

	; przesuń paczkę na inny palik
	(:action przesun-na-inny
		:parameters (?skad - palik ?dokad - palik ?krazek - krazek)
		:precondition (and
			; krążek jest na paliku źródłowym
			(na-paliku ?krazek ?skad)

			; krążek jest najmniejszy na paliku źródłowym (czyli na górze)
			(forall
				(?x1 - krazek)
				(or
					(not (na-paliku ?x1 ?skad))
					(or (= ?x1 ?krazek) (mniejszy ?krazek ?x1)))
			)

			; krążek jest mniejszy od wszystkich na paliku docelowym
			; tu sie przez przypadek okazalo, ze jak wszystkie sa nie na tym
			; krazku to nie musze robic dla pustego paliak
			(forall
				(?x2 - krazek)
				(or
					(not (na-paliku ?x2 ?dokad))
					(or (= ?x2 ?krazek) (mniejszy ?krazek ?x2)))
			)
		)
		:effect (and
			(not (na-paliku ?krazek ?skad))
			(na-paliku ?krazek ?dokad)
		)
	)
)