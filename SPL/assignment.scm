#! /usr/local/bin/guile -s
!#
(define log
    (lambda (v)
        (newline)
        (display v)
        (newline)
    )
)
; 求根公式
; 一般语言的思路
(define quadratic
    (lambda (a b c)
    (let ([root1 0] [root2 0] [minusb 0] [radical 0] [divisor 0])
        (set! minusb (- 0 b))
        (set! radical (sqrt (- (* b b) (* 4 (* a c)))))
        (set! divisor (* 2 a))
        (set! root1 (/ (+ minusb radical) divisor))
        (set! root2 (/ (- minusb radical) divisor))
        (cons root1 root2)
    ))
)

(display(quadratic 2 -4 -6))
(newline)

; scheme
(define quadratic2
    (lambda (a b c)
    (let ([minusb (- 0 b)]
        [radical (sqrt (- (* b b) (* 4 (* a c))))]
        [divisor (* 2 a)])
        (let ([root1 (/ (+ minusb radical) divisor)]
            [root2 (/ (- minusb radical) divisor)]
            )(cons root1 root2)
        )
    ))
)

(display(quadratic 2 -4 -6))
(newline)

; 维持内部多态
(define kons-count 0)
(define kons
    (lambda (x y)
        (set! kons-count (+ kons-count 1))
        (cons x y)
    )
)

(display (kons `a `b))
(newline)
(display kons-count)
(newline)
(display (kons `a `b))
(newline)
(display kons-count)
(newline)

; 使用全局变量计数
(define next 0)
(define count 
    (lambda ()
        (let ([v next])
            (set! next( + next 1))
            v
        )
    )
)
(display (count))
(newline)
(display (count))
(newline)
(display "next")
(display next)
(newline)
(display next)
(newline)

; 使用局部变量计数
(define count
    (let ([next 0])
        (lambda ()
            (let ([v next])
                (set! next (+ next 1))
                v
            )
        )
    )
)

(display (count))
(newline)
(display (count))
(newline)

; counter maker
(define make-counter
    (lambda ()
        (let ([next 0])
            (lambda ()
                (let ([v next])
                    (set! next (+ next 1))
                    v
                )
            )
        )
    )
)

(log "make-counter")
(define count1 (make-counter))
(define count2 (make-counter))
(log (count1))
(log (count2))
(log (count1))
(log (count2))




