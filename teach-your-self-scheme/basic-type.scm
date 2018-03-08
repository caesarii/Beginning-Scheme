#! /usr/local/bin/guile -s
!#

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