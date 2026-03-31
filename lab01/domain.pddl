(define
	(domain world-of-blocks)
	(:requirements :adl)
	(:predicates
		(mniejszy ?x ?y)
		(na-paliku ?krazek ?palik)
	)
	; przesuń paczkę na pusty palik
	(:action przesun-na-pusty
		:parameters (?skad ?dokad ?krazek)
		:precondition
		(and
			(na-paliku ?krazek ?skad)
			(forall (?x1) (mniejszy ?krazek ?x1))
			(forall (?x2) (not (na-paliku ?x2 ?dokad)))
		)
		:effect
		(and
			(not (na-paliku ?krazek ?skad))
			(na-paliku ?krazek ?dokad)
		)
	)

	; przesuń krazek na inny palik
	(:action przesun-na-palik
		:parameters (?skad ?dokad ?krazek)
		:precondition
		(and
			(na-paliku ?krazek ?skad)
			(forall (?x1) (mniejszy ?krazek ?x1))
			(forall (?x2) (mniejszy ?krazek ?x2))
		)
		:effect
		(and
			(not (na-paliku ?krazek ?skad))
			(na-paliku ?krazek ?dokad)
		)
	)
)