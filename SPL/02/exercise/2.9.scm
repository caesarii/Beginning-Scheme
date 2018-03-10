; 2.9.1
(define make-counter
    (lambda (initial len)
        (let ([next initial] [step len])
            (lambda ()
            (let ([v next])
                (set! next (+ next step))
                v
            ))
        )
    )
)

(define count (make-counter 1 2))
(display (count))
(display (count))

(define c2 (make-counter 2 2))
(display (c2))
(display (c2))

; 2.9.2
