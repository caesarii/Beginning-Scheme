#! /usr/local/bin/guile -s
!#

; 阶乘
(define (log x . z)
    (display x)
    (newline)
    (for-each (lambda (value)
            (display value)
            (newline)
        )
    z) 
)



(define (factorial n)
    (if (= n 0) 1
        (* n (factorial (- n 1)))
    )
)

(log (factorial 4))

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

; 实现循环
(letrec
    ((countdown (lambda (i)
        (if (= i 0) `liftoff
            (begin
                (log i)
                (countdown (- i 1))
            )
        ))
    ))
    (countdown 10)
)
; let 实现循环
(let countdown ((i 10))
    (if (= i 0) `liftoff
        (begin
            (log i)
            (countdown (- i 1))
        )
    )
)

; 尾递归

; 反转列表

(define l `(1 2 3 4))
(log l)
(reverse! l)
(log l)