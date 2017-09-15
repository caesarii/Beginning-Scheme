(define (expt b n)
	(if (= n 0)
		1
		(* b (expt b (- n 1)))
	)
)

(define (expt b n)
	(define (expt-iter b index result)
		(if (= index 0)
			result
			(expt-iter b (- index 1) (* b result))
		)
	)

	(expt-iter b n 1)
)