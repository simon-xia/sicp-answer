(define (accumulate op init seq)
	(if (null? seq)
		init
		(op (car seq)
			(accumulate op init (cdr seq)))))

; hard to understand
(define (count-leaves tree)
    (accumulate +
                0
                (map (lambda (sub-tree)
                         (if (pair? sub-tree)           
                             (count-leaves sub-tree)    
                             1))                        
                     tree))) 

(count-leaves (list (list 1 (list 2 3)) (list (list 4 5) (list 6 7))))
