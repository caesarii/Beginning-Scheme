#! /usr/local/bin/guile -s
!#

(define (log value)
    (newline)
    (display value)
    (newline)
)

(define (factorial n)
    (if (= n 0) 1
        (* n (factorial (- n 1)))
    )
)

(log (factorial 4))

