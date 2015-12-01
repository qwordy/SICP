#lang racket
(define (foo a b c)
	(if (not (or (> a b) (> a c)))
		(+ (* b b) (* c c))
		(foo b c a)))
(foo 3 1 2)

