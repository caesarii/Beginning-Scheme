; 获取表中的第 n 项
(define (list-ref items n)
	(if (= n 0)
		(car items)
		(list-ref (cdr items) (- n 1))
	)
)
(define squares (list 1 4 9 16 25))
(list-ref squares 3)

; 获取表长度
(define (length items)
	(if (null? items)
		0
		(+ 1 (length (cdr items)))
	)
)
(define odds (list 1 3 5 7))
(length odds)

; 迭代获取长度
(define (length items)
	(define (iter a count)
		(if (null? a)
			count
			(iter (cdr a) (+ 1 count))
		)
	)

	(iter items 0)
)

; 合并表
(define (append list1 list2)
	(if (null? list1)
		; list为空，则返回 list2
		list2
		
		; 递归和并 (cdr list1) 和 list2
		; 将 (car list1) 添加到新列表
		(cons (car list1) (append (cdr list1) list2))
	)
)

(define list1 (list 1 2 3 4))
(define list2 (list 5 6 7 8))
(append list1 list2)

; 最后一个元素
; 迭代
(define (last-pair lst)
	(define (iter curr prev)
		(if (null? curr)
			prev
			(iter (cdr curr) curr)
		)
	)
	(iter lst lst)
)
; 递归
(define (last-pair lst)
	(if (null? (cdr lst))
		lst
		(last-pair (cdr lst))
	)
)

(last-pair list2)

; 逆序
; 迭代
(define (reverse lst)
	(define result (list))

	(define (iter result lst)
		(if (null? lst)
			result
			(iter (cons (car lst) result) (cdr lst))
		)	
	)
	(iter (list) lst)
)

; 递归
; 实现不出来