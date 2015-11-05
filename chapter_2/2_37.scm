(define (accumulate op init seq)
	(if (null? seq) init
		(op (car seq) (accumulate op init (cdr seq)))))

(define (accumulate-n op init seqs)
    (if (null? (car seqs)) '()
        (cons (accumulate op init (map car seqs))
              (accumulate-n op init (map cdr seqs)))))

(define (dot-product v w)
	(accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
	(map (lambda (x) (dot-product x v)) m))

(define (transpose mat)
	  (accumulate-n cons '() mat))

(define (matrix-*-matrix m n)
	  (let ((cols (transpose n)))
		(map (lambda (x) (matrix-*-vector cols x)) m)))

(define m1	(list	(list 1 2 3 4)
					(list 4 5 6 6)
					(list 6 7 8 9)))

(define m2	(list	(list 1 4 6)
					(list 2 5 7)
					(list 3 6 8)
					(list 4 6 9)))

;(dot-product (list 1 2 3) (list 4 5 6))
;(matrix-*-vector m1 (list 1 1 1 1))
;(transpose m2)
(matrix-*-matrix m1 m2)
