
; 递归
(define (func n)
	(cond ((< n 3) n)
		(else (+ (func (- n 1))
				(* 2 (func (- n 2)))
				(* 3 (func (- n 3)))
		))
	)
)

(func(2))

; 迭代
; 0: 0
; 1: 1
; 2: 2
; 3: 
; 4 

(define (func n)
	(func-iter 2 1 0 0 n)

	(define (func-iter fiii fii fi i n)
		(if(= i n)
			fi
			(func-iter (+ fiii (* 2 fii) (* 3 fi))
				fiii
				b
				(+ i 1)
				n	
			)
		)
	)
)