(define (reverse l)
	(if (null? (cdr l))
		(car l)
		(list (reverse (cdr l)) (car l))))

; output a list
(define (reverse-list lst)
    (iter lst '()))

(define (iter remained-items result)
    (if (null? remained-items)
        result
        (iter (cdr remained-items)
              (cons (car remained-items) result))))
