(define (good-enough? old new)
	(< (/ (abs (- new old)) (abs old)) 0.001))

(define (improve-guess guess x)
	(/ (+ guess (/ x guess)) 2))

(define (sqrt-iter pre-guess guess x)
	(if (good-enough? pre-guess guess)
		guess
		(sqrt-iter guess (improve-guess guess x) x)))

(define (sqrt x)
	(sqrt-iter 0.0 1.0 x))
