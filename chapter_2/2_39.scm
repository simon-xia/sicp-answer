(define (fold-right op init seq)
	(if (null? seq) init
		(op (car seq) (accumulate op init (cdr seq)))))

(define (fold-left op res seq)
	(define (iter res seq)
			(if (null? seq)
				res
				(iter (op res (car seq)) (cdr seq))))
	(iter res seq))

(define (reverse1 sequence)
  (fold-right (lambda (x y) (append y (list x))) '() sequence))

(define (reverse2 sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence)) ; not list

;(reverse1 (list 1 2 3 4))
(reverse2 (list 1 2 3 4))
