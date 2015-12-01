#lang racket
(define (cube x) (* x x x))
(define (crt-iter guess x)
	(if (good-enough? guess (improve guess x))
		guess
		(crt-iter (improve guess x) x)))
(define (improve guess x)
	(/ (+ (/ x (* guess guess)) (+ guess guess)) 3))
(define (good-enough? old new)
	(< (/ (abs (- old new)) old) 0.001))
(define (crt x)
	(crt-iter 1.0 x))
(crt (read))

