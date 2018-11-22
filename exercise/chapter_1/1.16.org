(define (square x) (* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt-2 b n)
  (cond ((= n 0) 1)
        ((even? n) (fast-expt-2 (square b) (/ n 2)))
        (else (* b (fast-expt-2 b (- n 1))))))
