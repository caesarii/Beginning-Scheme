
; 移除列表中的指定元素(所有), 返回新列表
(define remv
    (lambda (x ls)
        (cond
            [(null? ls) '()]
            [(eqv? (car ls) x) (remv x (cdr ls))]
            [else (cons (car ls) (remv x (cdr ls)))]
        )
    )
)

(display (remv 1 '(1 2 1 3 4 1)))