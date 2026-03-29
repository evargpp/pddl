(define
    (domain world-of-stars)
    (:requirements :adl)
    (:predicates
        (podroznik ?planeta)
        (wajcha-na-planecie ?wajcha ?planeta)
        (wajcha-aktywna ?wajcha)
        (przycisk ?wajcha)
        (teleport ?wajcha ?s ?t)
        (teleport-wolny ?s ?t)
        (blokada ?p ?w)

        (sasiad ?s ?t)
        (gwiazda ?s ?star)
        (pusty ?s)


        (punkt-gwiazdowy ?s)
    )
    
    ; teleportuj sie przez teleport blokowany
    (:action move-blokowany
	:parameters (?t ?s ?w)
	:precondition
	(and
	    (podroznik ?s)
            (teleport ?w ?t ?s)
            (wajcha-aktywna ?w)
	)
	:effect
	(and
            (not (podroznik ?s))
            (podroznik ?t)
            (not (wajcha-aktywna ?w))
	)
    )


    ; teleportuj przez teleport bez blokady
    (:action move-wolny
	:parameters (?t ?s ?w)
	:precondition
	(and
	    (podroznik ?s)
            (teleport-wolny ?t ?s)
	)
	:effect
	(and
            (not (podroznik ?s))
            (podroznik ?t)
	)
    )

    (:action press-button
	:parameters (?s ?w ?p ?w2)
	:precondition 
            (and
                ; podroznik musi byc na planecie
	        (podroznik ?s)

	        ; przycisk musi byc na planecie
	        (przycisk ?s)
	    )
	:effect 
        (and
	    (not (blokada ?p ?w2))
            (not (przycisk ?p))
	)
    )


    (:action pull-lever
	:parameters (?w ?s)
	:precondition 
            (and
                ; podroznik musi byc na planecie
	        (podroznik ?s)

	        ; wajcha musi byc na planecie
	        (wajcha-na-planecie ?w ?s)

		; musi nie byc aktywna
    	    (not (wajcha-aktywna ?w))

		; musi nie byc zabokowana
    	    (not (blokada ?s ?w))
	    )
	:effect 
        (and
	    (wajcha-aktywna ?w)
	)
    )

    
    ; przesun gwiazde
    (:action move-star
	:parameters (?star ?t ?s)
	:precondition
	(and
            (gwiazda ?s ?star)
            (sasiad ?s ?t)
            (pusty ?t)
            (exists (?p1) (and (punkt-gwiazdowy ?p1) (podroznik ?p1)))
	)
	:effect
	(and
            (not (pusty ?t))
            (pusty ?s)

            (not (gwiazda ?s ?star))
            (gwiazda ?t ?star)
	)
    )


)