#! /usr/local/bin/guile -s
!#

; boolean
(display "boolean")

(define a (boolean? #t))
(display a)
(newline)

(define b (boolean? "heelo"))
(display b)
(newline)

(display (not #f))
(newline)

(display (not #t))
(newline)

(display (not "hell"))
(newline)

; number
(display "number")

(display (integer? 6))
(newline)

(display (rational? 22/7))
(newline)

(display (real? 22/7))
(newline)