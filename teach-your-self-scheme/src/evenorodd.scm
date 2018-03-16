; 求奇偶
(define (is-even? n)
        (if (= n 0) #t
            (is-odd? (- n 1))    
        )
)

(define (is-odd? n)
        (if (= n 0) #f
            (is-even? (- n 1))    
        )
)

(log (is-even? 3))
(log (is-odd? 3))

; letrec
(letrec ((even? (lambda (n)
    (if (= n 0) #t
        (odd? (- n 1)))))
    (odd? (lambda (n)
    (if (= n 0) #f
        (even? (- n 1))))
    ))
    (list (even? 23) (odd? 23))
)