(define (domain depot)
(:predicates
	 (at ?x ?y) (on ?x ?y) (in ?x ?y) (lifting ?x ?y) (available ?x) (clear ?x)(place ?x) (locatable ?x) (depot ?x) (distributor ?x) (truck ?x) (hoist ?x) (surface ?x) (pallet ?x) (crate ?x) )
(:action drive
 :parameters ( ?x ?y ?z)
 :precondition
	(and (truck ?x) (place ?y) (place ?z)  (at ?x ?y))
 :effect
	(at ?x ?z) )

(:action lift
 :parameters ( ?x ?y ?z ?p)
 :precondition
	(and (hoist ?x) (crate ?y) (surface ?z) (place ?p)  (at ?x ?p) (available ?x) (at ?y ?p) (on ?y ?z) (clear ?y))
 :effect
	(and (lifting ?x ?y) (clear ?z)))

(:action drop
 :parameters ( ?x ?y ?z ?p)
 :precondition
	(and (hoist ?x) (crate ?y) (surface ?z) (place ?p)  (at ?x ?p) (at ?z ?p) (clear ?z) (lifting ?x ?y))
 :effect
	(and (available ?x) (at ?y ?p) (clear ?y) (on ?y ?z)))

(:action load
 :parameters ( ?x ?y ?z ?p)
 :precondition
	(and (hoist ?x) (crate ?y) (truck ?z) (place ?p)  (at ?x ?p) (at ?z ?p) (lifting ?x ?y))
 :effect
	(and (in ?y ?z) (available ?x)))

(:action unload
 :parameters ( ?x ?y ?z ?p)
 :precondition
	(and (hoist ?x) (crate ?y) (truck ?z) (place ?p)  (at ?x ?p) (at ?z ?p) (available ?x) (in ?y ?z))
 :effect
	(lifting ?x ?y))

)
