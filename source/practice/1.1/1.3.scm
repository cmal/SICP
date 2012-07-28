(define (sum-the-bigger-two a b c)
  (cond ((>= a b)
         (cond ((>= b c) (+ a b))
               (else (+ a c))))
        (else
         (cond ((>= a c) (+ a b))
               (else (+ b c))))))
