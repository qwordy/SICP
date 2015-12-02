#lang racket
(define (* a b)
	(define (double n) (+ n n))
	(define (halve n) (/ n 2))
	(define (even? n)
		(= (remainder n 2) 0))
	(cond
		((= b 0) 0)
		((even? b) (double (* a (halve b))))
		(else (+ (* a (- b 1)) a))))
(require racket/trace)
(trace *)
(* (read) (read))

