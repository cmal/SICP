#lang sicp

(define (square x) (* x x))
(define (cuber x) (* x (square x)))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x) x)))


(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (cuber guess) x)) 0.001))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 27.0)
;; 3.0000005410641766
