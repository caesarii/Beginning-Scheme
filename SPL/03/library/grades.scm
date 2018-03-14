#! /usr/local/bin/guile -s
!#


(library (grades)
    (export gpa->grade gpa)
    (import (rnrs))
)

(define gpa 
    (lambda () (display "gpa"))
)

(define gpa->grade 
    (lambda () (display "gpa->grade"))
)