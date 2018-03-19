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
; 获取指定元素的索引
(define list-position 
    (lambda (o l)
        (let loop ((i 0) (l l))
            (if (null? l) #f
                (if (eqv? (car l) o) i
                    (loop (+ i 1) (cdr l))
                )
            )
        )
    )
)

; 用 letrec 重写
(define list-pos
    (lambda (o l)
        (letrec ([loop (lambda (i l)
            (if (null? l) #f
                (if (eqv? (car l) o) 
                    i
                    (loop (+ i 1) (cdr l))
                )
            ))])
            (loop 0 l)
        )
    )
)

; 反转列表
(define reverse!
    (lambda (s)
        (let loop ([s s] [r '()])
            (if (null? s)
                r
                (let ([d (cdr s)])
                    (set-cdr! s r)
                    (loop d s)
                )
            )
        )
    )
)

; map
(map (lambda (x) (+ x 2)) '(1 2 3))

; foreach
(define x '(1 2 3))
(for-each (lambda (n) (display n)) x)

; 高级 map
(map (lambda (x y z) (+ x y z)) '(1 2 3) '(1 2 3) '(1 2 3))

