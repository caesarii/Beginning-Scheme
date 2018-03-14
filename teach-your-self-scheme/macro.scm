
; when
(define-macro when 
    (lambda (test . branch)
        (list 'if test 
            (cons 'begin branch)
        )
    )
)

(define x  50)
(when (< x 60)
    (display "when macro")
) 

; 将 when 转换器应用到 when 表达式的子列表
(apply (lambda (test . branch)
    (list 'if test 
        (cons 'begin branch)))
    '((< x 60) (display "when macro"))
)

; 转换生成了一下列表
(if (< x 60) 
    (begin (display "when macro"))
)