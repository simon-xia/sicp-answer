(define (make-mobile left right)
    (cons left right))

(define (make-branch length structure)
    (cons length structure))

;(define (make-mobile left right)
;    (list left right))
;
;(define (make-branch length structure)
;    (list length structure))

(define (left-branch mobile) (car mobile))
;(define (right-branch mobile) (cadr mobile))
(define (right-branch mobile) (cdr mobile))

(define (branch-length branch) (car branch))
;(define (branch-structure branch) (cadr branch))
(define (branch-structure branch) (cdr branch))

(define (total-weight mobile)
	(cond	((and	(not (pair? (branch-structure mobile))) 
					(not (pair? (branch-length mobile)))) 
			 (* (branch-length mobile) (branch-structure mobile)))
			((and	(not (pair? (branch-length mobile))) 
					(pair? (branch-structure mobile)))
			 (* (branch-length mobile) 
				(total-weight (branch-structure mobile))))
			(else
				(+ (total-weight (left-branch mobile)) 
					(total-weight (right-branch mobile))))))

(define (balance-check mobile)
	(cond ((and (not (pair? (left-branch mobile)))
				(not (pair? (right-branch mobile))))
			#t) 
			((and (not (pair? (left-branch mobile)))
				(pair? (right-branch mobile)))
			(balance-check (right-branch mobile)))
		  (else
			(if (= (total-weight (left-branch mobile)) 
				   (total-weight (right-branch mobile)))
				(and (balance-check (left-branch mobile))
					(balance-check (right-branch mobile)))
			#f))))

(define test-mobile 
	(make-mobile 
		(make-branch 3 (make-mobile (make-branch 5 2) (make-branch 2 5)))
		(make-branch 60 1)))

;(total-weight test-mobile)

(balance-check test-mobile)


;修改数据表示的 cadr 为cdr 即可
