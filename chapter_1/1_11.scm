(define (f n) 
	(if (<= n 3)
	n
	(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f-iter-inr a b c cnt)
	(if (= cnt 0)
	c
	(f-iter-inr b c (+ c (* b 2) (* a 3)) (- cnt 1))))

(define (f-iter n)
	(if (<= n 3)
	n
	(f-iter-inr 1 2 3 (- n 3))))
