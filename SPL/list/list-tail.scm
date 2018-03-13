(define log (lambda (v)
    (newline)
    (display v)
    (newline)
))

; 返回对 list 进行指定次数的 cdr 获取的列表, 也就是 nth tail list
(define list-tail
    (lambda (ls n)
        (if (= n 0)
            ls
            (list-tail (cdr ls) (- n 1))
        )
    )
)

(log (list-tail '(a b c) 0))
(log (list-tail '(a b c) 2))
(log (list-tail '(a b c) 3))

(let ([ x (list 1 2 3)])
    (log (eq? (list-tail x 2) (cddr x)))
)