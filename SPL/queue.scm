#! /usr/local/bin/guile -s
!#

; queue 形如 ((1 2 3 ignored) ignored)
; q 的 car 是 数据所在, cdr 是 ()
(define make-queue
    (lambda () 
        (let ([end (cons `ignored `())])
            ; queue 初始为 ((ignored) ignored)
            (cons end end)
        )
    )
)

(define enqueue!
    (lambda (q v) 
        (let ([end (cons `ignored `())])
            (set-car! (cdr q) v)
            (set-cdr! (cdr q) end)

            ; 设置 q 的 cdr 为 ()
            (set-cdr! q end)
        )
    )
)

(define getq!
    (lambda (q)
        (car (car q))
    )
)

(define dequeue 
    (lambda (q)

        (set-car! q (cdr (car q)))
    )
)

(define q (make-queue))
(display q)
(newline)

(enqueue! q 1)
(display q)
(newline)

(enqueue! q 2)
(display q)
(newline)

