; 算法：总方式数 = 方式数(amount 兑换为金额不为 d 的硬币) + 方式数(amount -d 兑换为所有硬币) 
; amount 金额
(define (count-change amount)
	(cc amount 5)
)
; 金额为 amount, 硬币种类为 kinds 时，换币方式
(define (cc amount kinds-of-coins)
	; 如果金额为0，方式只有1 种
	; 若果金额小于0，或者硬币种类为0，方式为 0
	(cond ((= amount 0) 1)
		((or (< amount 0) (= kinds-of-coins 0)) 0)
		(else (+ (cc amount (- kinds-of-coins 1))
				 (cc (- amount (first-demomination kinds-of-coins)) kinds-of-coins )	
	))
	)
)

; 硬币种类： 50 25 10 5 1
; 根据硬币类型数量返回第一种硬币的币值
(define (first-demomination kinds-of-coins)
	(cond ((= kinds-of-coins 1) 1)
			((= kinds-of-coins 2) 5)
			((= kinds-of-coins 3) 10)
			((= kinds-of-coins 4) 25)
			((= kinds-of-coins 5) 50)
	)
)
