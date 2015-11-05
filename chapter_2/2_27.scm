(define (deep-reverse lst)
	(cond ((null? lst) '())
		  ((not (pair? lst)) lst)
		  (else
		  (list (deep-reverse (cdr lst)) (deep-reverse (car lst))))))

(deep-reverse (list (list 1 2) (list 3 4)))
