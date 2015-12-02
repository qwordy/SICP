#lang racket
(require racket/trace)
(define (f n)
	(if (< n 3)
		n
		(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))
(define (ff n)
	(define (iter c b a count)
		(if (= count (+ n 1))
			a
			(iter b a (+ a (* 2 b) (* 3 c)) (+ count 1))))
	(if (< n 3)
		n
		(iter 0 1 2 3)))
(trace f)
(trace ff)
(f (read))
(ff (read))

