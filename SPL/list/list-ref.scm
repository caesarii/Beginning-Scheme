(define log 
    (lambda (v)
        (newline)
        (display v)
        (newline)
    )
)

; 返回指定索引的元素
; scheme 中的基本遍历形式 不断对 list cdr
(define list-ref
    (lambda (ls n)
        (if (= n 0)
            ; 目标
            (car ls)
            ; 递归
            (list-ref (cdr ls) (- n 1))
        )
    )
)

(log (list-ref '(a b c) 0))

(log (list-ref '(a b c) 1))

(log (list-ref '(a b c) 2))