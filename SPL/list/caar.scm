(define log 
    (lambda (v)
        (newline)
        (display v)
        (newline)
    )
)

(define caar
    (lambda (x)
        (car (car x))
    )
)
(log (caar '((1 2) 3 4)) )

(define cddr
    (lambda (x)
        (cdr (cdr x))
    )
)
(log (cddr '(1 2 3 4)))

(define cadr 
    (lambda (x)
        (car (cdr x))
    )
)
(log (cadr '((1 2) 3 4)))

(define cdar
    (lambda (x)
        (cdr (car x))
    )
)
(log (cdar '((1 2) 3 4)))
