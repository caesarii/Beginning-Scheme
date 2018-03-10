#! /usr/local/bin/guile -s
!#
(define log
    (lambda (v)
        (newline)
        (display v)
        (newline)
    )
)

(define lazy 
    (lambda (t)
    (let ([val #f] [flag #f])
        (lambda () 
        (if (not flag)
            (begin (set! val (t))
                (set! flag #t)
            )
        )
        val
        )
    ))
)

(log (lazy "abc"))