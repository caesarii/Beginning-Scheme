#! /usr/local/bin/guile -s
!#

(define add2
    (lambda (x) (+ x 2))
)

(display (add2 2))
(display #\newline)

(display (add2 4))
(newline)

(define (add3 x y . z)
    (+ x y)
    (display z)
)

(add3 1 2 3 4)