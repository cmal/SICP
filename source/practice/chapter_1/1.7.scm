#lang sicp

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;; (define (good-enough? guess x)
;;   (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; if use old good-enough? definition
(sqrt 0.0000001)
;; => 0.03125106561775382

(sqrt 1000000000000000000)
;; => 1000000000.0

(define (good-enough? guess x)
  (< (/ (abs (- (square guess) x)) guess) 0.001))

;; use this new definition
(sqrt 0.0000001)
;; => 0.0010104595507340792
(sqrt 1000000000000000000)
;; => 1000000000.0000024

;; ANSWER to the question:

;; It does work better for small numbers,
;; but it does not work better for large numbers
;; because the same fractional change for large numbers
;; is larger than small numbers.
