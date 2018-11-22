#lang sicp

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)
;; => 5

(new-if (= 1 1) 0 5)
;; => 0

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2)
;; will get stuck, finally out of memory, or stack overflow.

;; NOTE: Applicative order will evaluate the params first before applying the procedure.
;; So `then-clause` and `else-clause` get evaluated before `cond` get applied.
;; Because the `else-clause` must get evaluated first, but `(sqrt-iter (improve guess x) x)`
;; go into an endless loop, like this:

(sqrt-iter 1.0 2)
;; =>
(new-if (good-enough? 1.0 2) 1.0 (sqrt-iter (improve 1.0 2) 2))
;; =>
(new-if #f 1.0 (sqrt-iter 1.5 2))
;; =>
(new-if #f 1.0 (new-if (good-enough? 1.5 2) 1.5 (sqrt-iter (improve 1.5 2) 2)))
;; =>
(new-if #f 1.0 (new-if #f 1.5 (sqrt-iter 1.75 2)))
;; =>
(new-if #f 1.0 (new-if #f 1.5 (new-if #f 1.75 (new-if (good-enough? 1.75 2) 1.75 (sqrt-iter (improve 1.75 2) 2)))))
;; =>
(new-if #f 1.0 (new-if #f 1.5 (new-if #f 1.75 (new-if #f 1.75 (sqrt-iter 1.875 2)))))
;; =>
;; ...

;; note the `new-if` here will never apply, because the `sqrt-iter`
;; procedure expands endlessly, even if the `good-enough?` procedure here
;; returns #t.
