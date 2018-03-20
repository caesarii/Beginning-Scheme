(define (cube x)

	; 边界
	(define (good-enough guess x)
	     (< (abs (- (* guess guess guess) x)) 0.001)
	)

	; 猜测值
	(define (improve guess x)
	     (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
	)

	; 递归
	(define (cube-iter guess x)
	     (if (good-enough guess x)
		    guess
	        (cube-iter (improve guess x) x)
	     )
	)
	
    (cube-iter 1.0 x)
)

(display (cube 27))


