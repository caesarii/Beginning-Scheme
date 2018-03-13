(define log 
    (lambda (v)
        (newline)
        (display v)
        (newline)
    )
)

(define list-copy
    (lambda (ls)
        (if (null? ls)
            '()
            (cons (car ls) (list-copy (cdr ls)))
        )
    )
)

(log (list-copy `(1 2 3 4)))