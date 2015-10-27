(define (pascal m n)
	(if (or (= m n) (= n 1)) 
		1
		(+ (pascal (- m 1) (- n 1)) (pascal (- m 1) n))))
