; method 1
; linear recursion
(+ 3 5)
(inc (+ 2 5))
(inc (inc (+ 1 5)))
(inc (inc (inc (+ 0 5))))
(inc (inc (inc 5)))
(inc (inc 6))
(inc 7)

; method 2
; linear iteration
(+ 3 5)
(+ 2 6)
(+ 1 7)
(+ 0 8)
