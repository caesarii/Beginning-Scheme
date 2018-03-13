
; length2
(define length2 (lambda (x) 
    (define improper-list
        (lambda () 
            (display "Exception")
        )
    )
    (let  f ([h x] [t x] [n 0])
        (if (pair? h)
            (let ([h (cdr h)])
                (if (pair? h)
                    (if (eq? h t)
                        (improper-list)
                        (f (cdr h) (cdr t) (+ n 2)))
                    (if (null? h)
                        (+ n 1)
                        (improper-list))))
                (if (null? h)
                    n
                    improper-list)        
        )
    )
))

; list-ref
(define list-ref2
    (lambda (ls n)
        (if (= n 0)
            (car ls)
            (list-ref (cdr ls) (- n 1))
        )
    )
)

; list-tail
(define list-tail2
    (lambda (ls n)
        (if (= n 0)
            ls
            (list-tail2 (cdr ls) (- n 1))
        )
    )
)

; append
(define append2 (lambda args 
    (let f ([ls '()] [args args])
        (if (null? args)
            ls
            (let g ([ls ls])
                (if (null? ls)
                    (f (car args) (cdr args))
                    (cons (car ls) (g (cdr ls)))
                )
            )
        )
    )
))

; reverse
(define reverse (lambda (ls)
    (let rev ([ls ls] [new '()])
        (if (null? ls)
            new
            (rev (cdr ls) (cons (car ls) new))
        )
    )
)

; 查找指定元素, 返回包含元素的第一个 tail list
(define memq2 (lambda (x ls)
        (cond 
            [(null? ls) #f]
            [(eq? (car ls) x) ls]
            [else (memq x (cdr ls))]
        )   
    )
)

; 返回 ls 的一个 tail list, 该tail list 的 car 对 p 过程返回 #t
(define memp (lambda (p ls)
    (cond
        [(null? ls) #f]
        [(p (car ls)) ls]
        [else (memp p (cdr ls))]
    )
))

; count-occur
(define count-occur
    (lambda (x ls)
        (cond   [(memq x ls) =>
            (lambda (ls)
                (+ (count-occur x (cdr ls)) 1))]
            [else 0]
        )
    )
)

; 移除列表中的指定元素(所有), 返回新列表
(define remq (lambda (x ls)
    (define loop (lambda (left right)
        (cond
            [(null? right) (reverse left)]
            [(eq? (car right) x) (loop left (cdr right))]
            [else (loop (cons (car right) left ) (cdr right))]
        ))
    )
    (loop '() ls)
))




