;;递归
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))
;;迭代
;;参照前面fib的变换规则
;;这里定义a/b/c三个变量，分别初始化为0/1/2
;;计算出f(3)=f(2)+2f(1)+3f(0)
;;然后反复做下列变换：
;;a=b,b=c,c=a+2b+3c(等号前面和等号后面变量的时间不一致，Lisp的好处之一)
;;用参数记录计算过程中的结果
(define (f n)
  (f-iter 0 1 2 n))
(define (f-iter a b c count)
  (cond ((< count 3) count)
        ((= count 3) (+ c (* 2 b) (* 3 a)))
        (else (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))))
