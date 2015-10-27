(define (product-recur term a next b)
		(if (> a b)
			1
			(* (term a) 
			   (product-recur term (next a) next b))))

(define (product-iter term a next b)
		(define (iter a result)
				(if (> a b)
					result
					(iter (next a) (* (term a) result))))
		(iter a 1))

(* 4 (product-recur (lambda (x) 
					   (/ (* (- x 1) (+ x 1) 1.0) (* x x)))
				3 
				(lambda (x) (+ x 2))
				100))
