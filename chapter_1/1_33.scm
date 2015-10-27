(define (filtered-accumulate predicate combiner null-value term a next b)
		(define (iter a result)
				(if (> a b)
					result
					(iter (next a) (combiner result
											 (if (predicate a)
												 (term a)
												 null-value)))))
		(iter a null-value))

(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))

(filtered-accumulate prime? + 0 (lambda (x) x) 2 (lambda (x) (+ x 1)) 20)

(define (gcd a b)
		(if (= b 0)
			a
			(gcd b (remainder a b))))

(define (coprime? a b)
		(if (= (gcd a b) 1)
			#t
			#f))


(define (less-coprime-sum n)
		(define (cop a) (coprime? a n))
		(filtered-accumulate cop * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(less-coprime-sum 10)
