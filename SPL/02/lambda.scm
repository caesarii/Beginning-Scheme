; 创建 lambda 并直接调用
((lambda (x) (+ x x)) (* 3 4))

; let 绑定 过程
(let ([double (lambda (x) (+ x x))])
    (list (double (* 3 4))
        (double (/ 99 11))
    )
)

; 自由变量
(let ([f 
        ; 过程定义时绑定的 x
        (let ([x 'sam])
            (lambda (y z) (list x y z))
        )])
    ; 过程调用时绑定的 x
    (let ([x 'not-sam])
        (f 'i 'am)
    )      
)

; 参数
; proper list
(let ([plist (lambda (x y z) 
        (display x)
        (display y)
        (display z))]
    )
    (plist 5 6 7)
)

; 单个变量
(let ([single (lambda x (display x))])
    (single 1 2 3 4) ; (1 2 3 4)
    (single 1 2 `(3 4)) ; (1 2 (3 4))
)

