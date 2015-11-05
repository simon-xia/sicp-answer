(define (for-each-test proc lst)
	(if (not (null? lst))
		(begin
			(proc (car lst))
			(for-each-test proc (cdr lst)))))

(for-each-test (lambda (x) (newline) (display x)) (list 1 2 3 4))
