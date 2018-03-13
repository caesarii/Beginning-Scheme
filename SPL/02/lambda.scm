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
        (let ([x 'sam])
            (lambda (y z) (list x y z))
        )])
        (f 'i 'am))
