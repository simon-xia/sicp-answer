(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment x1 y1 x2 y2)
		(cons (make-point x1 y1) (make-point x2 y2)))
(define (start-segment seg) (car seg))
(define (end-segment seg) (cdr seg))

(define (midpoint-segment seg)
		(make-point (/ (+ (x-point (start-segment seg))
						  (x-point (end-segment seg))) 2)
					(/ (+ (y-point (start-segment seg))
						  (y-point (end-segment seg))) 2)))

(print-point (midpoint-segment (make-segment 1 2 3 4)))
