(define (pascel row col)
	(cond ((= row col) 1)
		((= col 0) 1)
		(else (+
			(pascel (- row 1) (- col 1))
			(pascel (- row 1) col)
		))
	)
)

