(define (add-interval x y)
	(make-interval (+ (lower-bound x) (lower-bound y))
		(+ (upper-bound x) (upper-bound y))
	)
)

(define (mul-interval x y)
	(let (  (p1 (* (lower-bound x) (lower-bound y)))
			(p2 (* (lower-bound x) (upper-bound y)))
			(p3 (* (upper-bound x) (lower-bound y)))
			(p4 (* (upper-bound x) (upper-bound y)))
		)
		(make-interval (min p1 p2 p3 p4)
						(max p1 p2 p3 p4)
		)
	)
)

(define (div-interval x y)
	(mul-interval x
		(make-interval (/ 1.0 (upper-bound y))
						(/ 1.0 (lower-bound y))
		)
	)
)

(define (make-interval a b) (cons a b))
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

(define x (make-interval 1 5))
(lower-bound x)
(upper-bound x)

(define y (make-interval 2 4))

(add-interval x y)
(mul-interval x y)
(div-interval x y)

(define (sub-interval x y)
	(let (
			(low-min (min (lower-bound x) (lower-bound y)))
			(low-max  (max (lower-bound x) (lower-bound y)))
			(high-min (min (upper-bound x) (upper-bound y)))
			(high-max (max (upper-bound x) (upper-bound y)))
		)

		(make-interval (- low-max low-min) (- high-max high-min))
	)

		
)	
(sub-interval x y)			

(define z (make-interval 3 6))

(define (make-center-width c p)
	(make-interval (- c (* c p) (+ c (* c p))))
)
(define (center i) {
	(/ (+ (lower-bound i) (upper-bound i) ) 2)
})
(define (percent i)
	(/ (/ (- (upper-bound i) (lower-bound i)) 2) (center i) )
)

(define pq (make-center-width 10  (/ 2 10)))