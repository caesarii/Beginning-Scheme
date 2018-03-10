
; let 绑定局部变量与 lambda
; sum 的作用域是 let body, 在 lambda body 中没定义
; (let ([sum (lambda (ls) 
;                (if (null? ls)
;                    0
;                    (+ (car ls) (sum (cdr ls)))
;                )
;            )
;    ])
;    (sum `(1 2 3 4 5))
;)

; 在 let body 中将 sum 传递到 过程
(let ([sum (lambda (sum ls) 
                (if (null? ls)
                    0
                    (+ (car ls) (sum sum (cdr ls)))
                )
            )
    ])
    (sum sum `(1 2 3 4 5))
)

; letrec 实现 lambda 局部绑定
(letrec ([sum3 (lambda (ls) 
                (if (null? ls)
                    0
                    (+ (car ls) (sum3 (cdr ls)))
                )
            )
    ])
    (sum3 `(1 2 3 4 5))
)

; 

(define list? (lambda (x)
    (letrec ([race lambda (h t)
        (if (pair? h)
            (let ([h (cdr h)])
                (if (pair? h)
                    (and (not (eq? h t))
                        (race (cdr h) (cdr t)))
                    (null? h)))
                (null? h)
        ))]
    )
    (race x x)
)))


