(define (log-plus a b)
	(cond ((= b 0) 0)
			((= b 1) a)
			((even? b) (double (log-plus a (halve b))))
			(else (+ (log-plus a (- b 1)) a))))

(define (double x) (* x 2))

(define (halve x) (/ x 2))

(define (even? x) (= (remainder x 2) 0))
