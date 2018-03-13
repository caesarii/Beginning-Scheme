

; append
(define append (lambda args 
    (let f ([ls '()] [args args])
        (if (null? args)
            ls
            (let g ([ls ls])
                (if (null? ls)
                    (f (car args) (cdr args))
                    (cons (car ls) (g (cdr ls)))
                )
            )
        )
    )
))