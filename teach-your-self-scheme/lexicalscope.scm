#! /usr/local/bin/guile -s
!#
(define (log value)
    (newline)
    (display value)
    (newline)
)

(define counter 0)
(define (bump-counter)
    (set! counter (+ counter 1))
    ; 返回值
    counter
)

(log (bump-counter))
(log (bump-counter))
(log (bump-counter))

; let
(define x 4)
(let ((x 1)
    (y 2)
    (z 3)) 
    (log(list x y z))
)

