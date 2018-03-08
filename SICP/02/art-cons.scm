; cons 返回一个函数，根据参数是 0 / 1 返回 x / y
(define (cons x y)
	(define (dispatch m)
		(cond ((= m 0) x)
			((= m 1) y)
			(else (error "Argument not 0 0r 1 -- CONS" m))
		)
	)
	dispatch
)

; 调用 dispatch 函数，参数 0 / 1
(define (car z) (z 0))
(define (cdr z) (z 1))

(define z (cons 1 2))
(car z)
(cdr z)