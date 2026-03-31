(define (domain world-of-merry)
	(:requirements :adl)
	(:predicates
		(drzwi ?s ?t ?kolor)
		(kulka1 ?pokoj ?kolor)
		(kulka2 ?pokoj ?kolor)
		(merry ?pokoj)
		(plecak1 ?kolor)
		(plecak2 ?kolor)
	)
	(:types
		kolor 
		pokoj
	)

	; idz do pokoju
	(:action idz-majac-jedna
		:parameters (?t - pokoj ?s - pokoj ?k - kolor) 
		:precondition (and
			; Merry musi byc w pokoju z ktorego startujemy
			(merry ?s)

			; musza byc drzwi do pokoju do ktorego idzie w kolorze
			(drzwi ?s ?t ?k)

			; odpowienia kulka musi byc w plecaku
			(plecak1 ?k)
		)
		:effect (and
			(not (plecak1 ?k))
			(not (merry ?s))
			(merry ?t)
		)
	)


	(:action idz-majac-dwie
		:parameters (?t - pokoj ?s - pokoj ?k - kolor) 
		:precondition (and
			; Merry musi byc w pokoju z ktorego startujemy
			(merry ?s)

			; musza byc drzwi do pokoju do ktorego idzie w kolorze
			(drzwi ?s ?t ?k)

			; odpowienia kulka musi byc w plecaku
			(plecak2 ?k)
		)
		:effect (and
			(not (plecak2 ?k))
			(plecak1 ?k)
			(not (merry ?s))
			(merry ?t)
		)
	)


	(:action wez-gdy-jedna-pusty-plecak
		:parameters (?k - kolor ?s - pokoj) 
		:precondition (and
			; Merry musi byc w pokoju z ktorego startujemy
			(merry ?s)

			; musi byc kulka w tym kolorze w tym pokoju
			(kulka1 ?s ?k)
		)
		:effect (and
			(not (kulka1 ?s ?k))
			(plecak1 ?k)
		)
	)


	(:action wez-gdy-jedna-i-jedna-w-plecaku
		:parameters (?k - kolor ?s - pokoj) 
		:precondition (and
			; Merry musi byc w pokoju z ktorego startujemy
			(merry ?s)

			; musi byc kulka w tym kolorze w tym pokoju
			(kulka1 ?s ?k)

			; musi byc kulka w tym kolorze w plecaku
			(plecak1 ?k)
		)
		:effect (and
			(not (kulka1 ?s ?k))
			(not (plecak1 ?k))
			(plecak2 ?k)
		)
	)


	(:action wez-gdy-dwie
		:parameters (?k - kolor ?s - pokoj) 
		:precondition (and
			; Merry musi byc w pokoju z ktorego startujemy
			(merry ?s)

			; musi byc kulka w tym kolorze w tym pokoju
			(kulka2 ?s ?k)
		)
		:effect (and
			(not (kulka2 ?s ?k))
			(kulka1 ?s ?k)
			(plecak1 ?k)
		)
	)


	(:action wez-gdy-dwie-i-jedna-w-plecaku
		:parameters (?k - kolor ?s - pokoj) 
		:precondition (and
			; Merry musi byc w pokoju z ktorego startujemy
			(merry ?s)

			; musi byc kulka w tym kolorze w tym pokoju
			(kulka2 ?s ?k)

			; musi byc kulka w tym kolorze w plecaku
			(plecak1 ?k)
		)
		:effect (and
			(not (kulka2 ?s ?k))
			(kulka1 ?s ?k)
			(not (plecak1 ?k))
			(plecak2 ?k)
		)
	)
)