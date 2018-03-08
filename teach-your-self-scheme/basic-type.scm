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

(display (complex? 2+3i))
(newline)

; 类型转换
(display (char->integer #\d))
(newline)

(display (integer->char 100))
(newline)

(display (string->list "hello"))
(newline)

(display (list->string `(#\h #\e #\l #\l #\o)))
(newline)

(display (vector->list #(1 2 3 4)))
(newline)

(display (list->vector `(1 2 3 4)))
(newline)

(display (number->string 123))
(newline)

(display (string->number "123"))
(newline)

(display (string->symbol "name"))
(newline)

(display (symbol->string `name))
(newline)

(newline)