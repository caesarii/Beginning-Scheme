; cons 返回一个函数，这个函数的参数是另一个函数
; 这里的 m 就是 car cdr 中的 lambda
(define (cons x y)
	(lambda (m) (m x y))
)

(define (car z)
	(z (lambda (p q) p))
)
(define (cdr z)
	(z (lambda (p q) q))
)

(define z (cons 1 2))
(car z)
(cdr z)