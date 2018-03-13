
(define list (lambda x x))





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







; reverse
(define reverse (lambda (ls)
    (let rev ([ls ls] [new '()])
        (if (null? ls)
            new
            (rev (cdr ls) (cons (car ls) new))
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






