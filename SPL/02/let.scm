#! /usr/local/bin/guile -s
!#

(let ([list1 `(a b c)] [list2 `(d e f)])
    (cons (cons (car list1)
                (car list2))
            (cons (car (cdr list1))
                (car (cdr list1))
            )
    )
)

(let ([a 4] [b -3])
    (let ([a-sqrt (*a a)]
        [b-sqrt (* b b)])
        (+ a-sqrt b-sqrt)
    )
)


; let 绑定 过程
(let ([f +])
    (f 2 3)
)

; let 绑定 lambda
(let ([a (lambda (x) x)])
    (a 2)
)

; 嵌套 let
(let ([x 1])
    ; 后一个 x 的值是 1, 因为这里是第一次绑定的 作用域
    (let ([ x (+ x 1)])
        ; x 取第二次绑定后的值, 屏蔽第一次绑定
        (+ x x)
    )
)
