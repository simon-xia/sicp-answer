(define (min a b) 
	(if (< a b) a b))

(define (square x) 
	(* x x))

(define (sum_of_max_two_squares a b c)
	(- (+ (square a) (square b) (square c)) (square (min (min a b) c))))
