; sum
(define (sum-int a b)
	(if (> a b)
		0
		(+ a (sum-int (+ a 1) b))
	)
)

; 平方和
(define (sum-cube a b)
	(if (> a b)
		0
		(+ (cube a) (sum-cube ( + a 1) b))
	)
)

(define (cube a)
	(* a a)
)

; 过程作为参数
; 求和函数
(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a)
			(sum term (next a) next b)
		)
	)
)

; 平方和
; next ++1
(define (inc n) 
	(+ n 1)
)
; term cube
(define (cube a)
	(* a a)
)
(define (sum-cube a b)
	(sum cube a inc b)
)

;整数和
; term x
(define (identity x)
	x
)
(define (sum-int a b) 
	(sum identity a inc b)
)


; 迭代版的 sum
(define (sum term a next b)
	(define (iter a result)
		(if (> a b)
			(iter b result)
			(iter (+ a 1) result)
		)
	)
	(iter a 0)
)

