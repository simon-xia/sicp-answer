(define (f n) 
	(if (<= n 3)
	n
	(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f-iter-inr a b c cnt))

(define (f-iter n)
	(if (<= n 3)
	n
	()))
