; zero 的值是一个函数,这个函数的参数就是 add
(define zero 
	(lambda (f) 
		(lambda (x) x)
	)
)

; 
(define (add n)
	(lambda (f) 
		(lambda (x) 
			(f (n f) x)
		)
	)
)

; 使用方式
(define one ((zero add) 0))