(define (square x) (* x x))
(define (sum-of-squares x y)
    (+ (square x) (square y)))

;;Newton method sqrt - 1
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough guess x)
  (< (abs (- x (square guess))) 0.001))
(define (sqrt x)
  (sqrt-iter 1.0 x))

;;块结构和内部定义
(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- x (square guess))) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))
;;简化的块结构--块结构没有必要让x在结构中传来传去
(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- x (square guess))) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

