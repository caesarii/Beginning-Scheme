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
(newline)

; apply
(define x `(2 3 4))
(display(apply + x))
(newline)

; begin
(define (display3 arg1 arg2 arg3)
    (begin
        (display arg1)
        (display " ")
        (display arg2)
        (display " ")
        (display arg3)
        (display " ")
        (newline)
    )
)
(display3 5 6 7)