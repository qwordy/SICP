#lang racket
(define (f i j)
	(if (or (< i j) (< i 0) (< j 0))
		-1
		(if (or (= j 0) (= i j))
			1
			(+ (f (- i 1) (- j 1)) (f (- i 1) j)))))
(f (read) (read))

