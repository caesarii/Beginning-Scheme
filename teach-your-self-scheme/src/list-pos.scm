
; 获取指定元素的索引
(define list-position 
    (lambda (o l)
        (let loop ((i 0) (l l))
            (if (null? l) #f
                (if (eqv? (car l) o) i
                    (loop (+ i 1) (cdr l))
                )
            )
        )
    )
)

; 用 letrec 重写
(define list-pos
    (lambda (o l)
        (letrec ([loop (lambda (i l)
            (if (null? l) #f
                (if (eqv? (car l) o) 
                    i
                    (loop (+ i 1) (cdr l))
                )
            ))])
            (loop 0 l)
        )
    )
)