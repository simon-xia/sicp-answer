(define (fringe lst)
	(cond	((null? lst) '())
			((not (pair? lst)) (list lst)) ; list
			(else
				(append (fringe (car lst)) (fringe (cdr lst)))))) ; append

(define x (list (list 1 2) (list 3 4)))

(fringe x)
