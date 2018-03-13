#! /usr/local/bin/guile -s
!#

(define (log x)
    (newline)
    (display x)
    (newline)

)

(define length
    (lambda (ls)
        (if (null? ls)
            0
            (+ (length (cdr ls)) 1)
        )
    )
)
; (trace length)
(log (length `(1 2 3)))

(define list-copy
    (lambda (ls)
    (if (null? ls)
        `()
        (cons (car ls)
            (list-copy (cdr ls))
        )
    ))
)

(log (list-copy `(4 5 6)))

; 返回包含 x 第一个子列表
(define memv
    (lambda (x ls)
    (cond
        [(null? ls) #f]
        [(eqv? (car ls) x) ls]
        [else (memv x (cdr ls))]
    ))
)

(log (memv `a `(b a c d)))

; indexOf
(define iemv
    (lambda (x ls i)
    (cond
        [(null? ls) #f]
        [(eqv? (car ls) x) i]
        [else (iemv x (cdr ls) (+ 1 i))]
    ))
)

(log (iemv `a `(b a c d) 0))


; 返回不包含 x 的列表
(define remv
    (lambda (x ls)
    (cond 
        [(null? ls) `()]
        [(eqv? (car ls) x) (remv x (cdr ls))]
        [else (cons (car ls) (remv x (cdr ls)))]
    ))
)

(display (remv `a `(b a c d)))
(newline)

; map 将列表映射为元素的绝对值组成的列表
(define abs-all
    (lambda (ls)
    (if (null? ls)
        `()
        (cons (abs (car ls))
            (abs-all (cdr ls))
        )
    ))
)

(display (abs-all `(-1 2 -3 4)))
(newline)

; map 函数的实现
(define map1 
    (lambda (p ls)
        (if (null? ls)
        `()
        (cons (p (car ls))
            (mapl p (car ls))
        ))
    )
)

(define tree-copy
    (lambda (tr)
        (if (not (pair? tr))
            tr
            (cons (tree-copy (car tr))
                (tree-copy (cdr tr))
            )
        )
    )
)

