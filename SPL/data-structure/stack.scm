
(define make-stack
    (lambda () 
        (let ([ls `()])
            (lambda (msg . args)
                (cond
                    ; 检测 stack 是否为空 
                    [(eqv? msg `empty?) (null? ls)]

                    ; 向栈顶添加元素
                    [(eqv? msg `push!) (set! ls (cons (car args) ls))]

                    ; 获取栈顶元素
                    [(eqv? msg `top) (car ls)]

                    ; 从栈顶弹出元素
                    [(eqv? msg `pop) (set! ls (cdr ls))]

                    ; 打印元素
                    [(eqv? msg `log) (display ls)]

                    ; error
                    [else "oops"]
                )
            )
        )
    )
)

(define s1 (make-stack))
(define s2 (make-stack))
(display (list (s1 `empty?) (s2 `empty?)))
(newline)

(s1 `push! `a)
(s1 `push! `b)

(s2 `push! `1)
(s2 `push! `2)

(display (s1 `top))
(newline)
(display (s2 `top))
(newline)

(s1 `pop)
(s2 `pop)



(s1 `log)
(newline)
(s2 `log)
(newline)
(display (list (s1 `empty?) (s2 `empty?)))