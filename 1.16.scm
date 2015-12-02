#lang racket
(define (expt b n)
	(define (even? n)
		(= (remainder n 2) 0))
	(define (iter b n a)
		(cond
			((= n 1) (* b a))
			((even? n) (iter (* b b) (/ n 2) a))
			(else (iter b (- n 1) (* a b)))))
	(iter b n 1))
(require racket/trace)
(trace expt)
(expt (read) (read))

