(define-macro defstruct
    (lambda (s . ff)
        (let ((s-s (symbol->string s)) (n (length ff)))
            (let* ((n+1 (+ n 1))
                    (vv (make-vector n+1)))
                (let loop ((i 1) (ff ff))
                    (if (<= i n)
                        (let ((f (car ff)))
                            (vector-set! vv i
                                (if (pair? f) (cadr f) '(if #f #f)))
                            (loop (+ i 1) (cdr ff)))))
                ))))


(defstruct tree height gitrh age leaf-shape leaf-color)

(define coconut 
    (make-tree 'height 30
            'leaf-shape 'frond
            'age 5)
) 

(display(tree.height coconut))