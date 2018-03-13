

; 查找指定元素, 返回包含元素的第一个 tail list
(define memv 
    (lambda (x ls)
        (cond 
            [(null? ls) #f]
            [(eqv? (car ls) x) ls]
            [else (memv x (cdr ls))]
        )   
    )
)

(display (memv 1 '(2 1 3 4)))