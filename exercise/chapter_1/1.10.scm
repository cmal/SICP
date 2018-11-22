#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
;; 1.
(A 1 10)

(cond ((= 10 0) 0)
      ((= 1 0) (* 2 10))
      ((= 10 1) 2)
      (else (A (- 1 1)
               (A 1 (- 10 1)))))
(cond (#f 0)
      ((= 1 0) (* 2 10))
      ((= 10 1) 2)
      (else (A (- 1 1)
               (A 1 (- 10 1)))))

(cond (#f 0)
      (#f (* 2 10))
      ((= 10 1) 2)
      (else (A (- 1 1)
               (A 1 (- 10 1)))))

(cond (#f 0)
      (#f (* 2 10))
      (#f 2)
      (else (A (- 1 1)
               (A 1 (- 10 1)))))

(A (- 1 1)
   (A 1 (- 10 1)))

(A 0
   (A 1 9))
;; ignore the cond process
(A 0 (A 0 (A 1 8)))
(A 0 (A 0 (A 0 (A 1 7))))
(A 0 (A 0 (A 0 (A 0 (A 1 6)))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2))))))))) 
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8))))))) 
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16)))))) 
(A 0 (A 0 (A 0 (A 0 (A 0 32)))))
(A 0 (A 0 (A 0 (A 0 64))))
(A 0 (A 0 (A 0 128))) 
(A 0 (A 0 256))
(A 0 512)
1024

;; (A 0 n) is 2n
;; (A 1 n) is 2^n
(A 2 4)
(A (- 2 1) (A 2 (- 4 1)))
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 4))
(A 1 16)
65535
;; 2^16
;; 2 ^ (2 ^ (2 ^ 2))

(A 2 3)
(A 1 (A 2 2))
(A 1 (A 1 (A 2 1)))
(A 1 (A 1 2))
;; 2 ^ (2 ^ 2)

;; so (A 2 n) is 2 ^ (2 ^ (2 ^ ....)) recursively,
;; with total n number of 2, where n >= 1.
;; The special case n = 1 is just the second condition of `cond`.


(A 3 3)
(A 2 (A 3 2))
(A 2 (A 2 (A 3 1)))
(A 2 (A 2 2))
(A 2 (A 1 (A 2 1)))
(A 2 (A 1 2))
(A 2 4)
65535