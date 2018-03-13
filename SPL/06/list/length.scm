(define log 
    (lambda (v)
        (newline)
        (display v)
        (newline)
    )
)

(define length 
    (lambda (ls)
        (if (null? ls)
            0
            (+ (length (cdr ls)) 1)
        )
    )
)

(log (length '(0 1 2 3)))
(log (length `()))

