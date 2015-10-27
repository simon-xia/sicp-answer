(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a)
			(sum term (next a) next b))))

(define (tompson-integral f a b n)
	(define dx (/ (* (- b a) 2.0) n))
	(define (next-a a) (+ a dx))
	(define (term-a a) 
			(+ (* 2 (f a)) 
			   (* 4 (f (+ a (/ dx 2.0))))))
	(* (/ (* (- b a) 1.0) 3) 
	   (+ (- (f b) (f a)) 
		  (sum term-a a next-a b))))

(define (cube x) (* x x x))

(tompson-integral cube 0 1 100)
(tompson-integral cube 0 1 1000)
