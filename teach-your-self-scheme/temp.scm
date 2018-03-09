; 在 l 从查找 o, 返回其索引
(define list-postion 
    (lambda (o 1) 
        (let loop ((i 0) (l l))
            ; l 为 null 返回 #f
            (if (null? l) 
                #f
                ; 如果 l 的第一个元素是目标, 返回 i
                ; 否则递归
                (if (eqv? (car l) o) 
                    i
                    (loop (+ i 1) (cdr l))
                )
            )
        )
    )
)

(display (list-postion 2 `(1 2 3 4)))