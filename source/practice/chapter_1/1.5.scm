#lang sicp

;; #lang sicp uses applicative order

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p)) ;; the interpreter will be stuck in evaluating (p), which causes an endless loop. Or cause stack overflow.

;; BTW: Clojure is applicative form

;; use the following to detect applicative or normal order
;; https://stackoverflow.com/questions/29657169/normal-order-vs-applicative-order-procedure-in-scheme
(define applicative?
  (lambda ()
   (let ((test #t))
    (let ((e (begin (set! test #f) #f)))
      (if test (display 'normal) (display 'applicative))))))

(applicative?)
;; => applicative




;; create a new file and do this:
#lang lazy
;; #lang lazy is normal order

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
;; => 0

;; EXPLANATION: The interpreter will first try to expand test,
((λ (x y) (if (= x 0) 0 y)) 0 (p))
;; and apply lambda

((if (= 0 0) 0 (p)))
;; apply if

;; and reduce (= 0 0)
((if #t 0 (p)))

;; we are in the process of applying if, so:
0

;; use this to detect applicative or normal order

(define applicative?
  (lambda ()
   (let ((test #t))
    (let ((e (begin (set! test #f) #f)))
      (if test (display 'normal) (display 'applicative))))))

(applicative?)
;; => normal
