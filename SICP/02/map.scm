(define (scale-list items factor)
	(if (null? items)
		0
		(cons (* (car items) factor)
			(scale-list (cdr items) factor)
		)
	)
)

(define lst (list 1 2 3 4 5))
(scale-list lst 10)