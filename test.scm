#lang racket
(define (f) (f))
(cond (#t 1)
	(#t (f)))
 
