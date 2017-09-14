(define (inc n)
	(+ n 1)
)

(define (dec n)
	(- n 1)
)

(define (+ a b)
	(if (= a 0)
		b 
		(inc (+ (dec a) b))
	)
)
; (+ 4 5) 
; inc (+ 3 5)
; inc (inc (+ 2 5))
; inc (inc (inc (+ 1 5)))
; inc (inc (inc (inc (+ 0 5)))
; inc (inc (inc (inc 5)))
; inc (inc (inc (6)))
; inc (inc (7))
; inc (8)
; 9

; 递归与迭代的区别： 
; 迭代的每一步都保存了全部信息, 递归的每一步信息都是不完整的
; 

(define (+ a b)
	(if (= a 0)
		b
		(+ (dec a) (inc b))		
	)
)

(define (+ a b)
	(define (plus low base sum i)
		(if (= i m)
			sum
			(plus a b (inc sum) (inc i))
		)
	)
	
	(plus 0 b b 0)
	
)

; (+ 4 5)
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)