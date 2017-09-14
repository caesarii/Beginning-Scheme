(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))

; 测试 make-rat
(define x (make-rat 1 2))
(numer x)
(denom x)

; 加
(define (add-rat x y)
	(define n (+ (* (numer x) (denom y)) (* (numer y) (denom x))))
	(define d (* (denom x) (denom y)))
	(make-rat n d)
)
; 减
(define (sub-rat x y)
	(define n (- (* (numer x) (denom y)) (* (numer y) (denom x))))
	(define d (* (denom x) (denom y)))
	(make-rat n d)
)
; 乘
(define (mul-rat x y)
	(define n (* (numer x) (numer y)))
	(define d (* (denom x) (denom y)))
	(make-rat n d)
)
; 除
(define (div-rat x y)
	(define n (* (numer x) (denom y)))
	(define d (* (denom x) (numer y)))
	(make-rat n d)
)

; 测试 
(define x (make-rat 1 2))
(define y (make-rat 1 3))
; add-rat
(add-rat x y)
; sub-rat
(sub-rat x y)
; mul-rat
(mul-rat x y)
; div-rat 
(div-rat x y)

; 打印
(define (print-rat x)
	(newline)
	(display (numer x))
	(display "/")
	(display (denom x))
)