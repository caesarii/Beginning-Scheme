

(define (log x . z)
    (display x)
    (newline)
    (for-each (lambda (value)
            (display value)
            (newline)
        )
    z) 
)

(log 2)