(define log (lambda (v)
    (newline)
    (display v)
    (newline)
))

; 返回指定索引的元素
(define list-ref
    (lambda (ls n)
        (if (= n 0)
            (car ls)
            (list-ref (cdr ls) (- n 1))
        )
    )
)

(log (list-ref '(a b c) 0))

(log (list-ref '(a b c) 1))

(log (list-ref '(a b c) 2))