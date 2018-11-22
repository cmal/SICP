(define (sum-square-of-the-bigger-two a b c)
  (if (>= a b)
      (if (>= b c)
          (sum-of-squares a b)
          (sum-of-squares a c))
      (if (>= a c)
          (sum-of-squares b a)
          (sum-of-squares b c))))

(sum-square-of-the-bigger-two 1 2 3)
(sum-square-of-the-bigger-two 1 3 2)
(sum-square-of-the-bigger-two 2 1 3)
(sum-square-of-the-bigger-two 2 3 1)
(sum-square-of-the-bigger-two 3 1 2)
(sum-square-of-the-bigger-two 3 2 1)