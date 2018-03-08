(define nil 0)
(define lst 
	(cons 1
		(cons 2
			(cons 3
				(cons 4 nil)
			)
		)
	)	
)


(car lst)
(car (cdr lst))
(car (cdr (cdr lst)))
(car (cdr (cdr (cdr lst))))

(define lst (list 1 2 3 4))
(car lst)
(cdr lst)
(car (cdr lst))
