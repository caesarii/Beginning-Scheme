;定义序对，并命名
(define x (cons 1 2))

; 提取
(car x)
(cdr x)

;序对的序对
(define x (cons 1 2))
(define y (cons 3 4))
(define z (cons x y))
(car (car z))
(cdr (car z))
(car (cdr z))
(cdr (cdr z))