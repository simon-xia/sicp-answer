(define (gcd a b)
		(if (= b 0)
			a
			(gcd b (remainder a b))))

(define (make-rat a b)
		(let ((abs-a (abs a))
			  (abs-b (abs b)))
				(let  ((r (gcd abs-a abs-b)))
				(if (< (* a b) 0)
					(cons (- 0 (/ abs-a r)) (/ abs-b r))
					(cons (/ abs-a r) (/ abs-b r))))
		))

(define (numer x) (car x))
(define (denom x) (cdr x))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(print-rat (make-rat 4 -8))
