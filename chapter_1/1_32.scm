(define (accumulate-recur combiner null-value term a next b)
		(if (> a b)
			null-value
			(combiner (term a) 
					  (accumulate-recur combiner null-value term (next a) next b))))

(define (sum-recur term a next b)
		(accumulate-recur + 0 term a next b))

(define (product-recur term a next b)
		(accumulate-recur * 1 term a next b))

(define (accumulate-iter combiner null-value term a next b) 
		(define (iter a result) 
				(if (> a b)
					result
					(iter (next a) (combiner (term a) result))))
		(iter a null-value))

(define (sum-iter term a next b)
		(accumulate-iter + 0 term a next b))

(define (product-iter term a next b)
		(accumulate-iter * 1 term a next b))

(* 4 (product-iter (lambda (x) (/ (* (- x 1) (+ x 1) 1.0) (* x x)))
			  3 
			  (lambda (x) (+ x 2))
			  100))

