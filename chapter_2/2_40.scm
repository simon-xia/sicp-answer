(define (unique-pairs n)
	(accumulate append 
				'() 
				(map (lambda (i) 
						(map	(lambda (j) (list i j)) 
								(enumerate-interval 1 (- i 1))))
					 (enumerate-interval 1 n))))

(define (enumerate-interval low high)
	(if (> low high) '()
		(cons low (enumerate-interval (+ 1 low) high))))

(define (accumulate op init seq)
	(if (null? seq)
		init
		(op (car seq) (accumulate op init (cdr seq)))))

(define (filter predicate seq)
	(if (null? seq)
		'()
		(if (predicate (car seq))
			(cons (car seq) (filter predicate (cdr seq)))
			(filter predicate (cdr seq)))))

(define (odd-sum? pair)
	(define (is-odd? x) (= 1 (remainder x 2)))
	(is-odd? (+ (car pair) (cadr pair))))

(define (odd-sum-pairs n)
	(filter odd-sum? (unique-pairs n)))

(odd-sum-pairs 5)
