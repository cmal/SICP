;;帕斯卡三角
;;这个算法不检查超出范围的值
(define (pasca a b)
  (cond ((= 0 a) 1)
        ((= a b) 1)
        (else (+ (pasca (- a 1) (- b 1))  ;;左上角
                 (pasca a (- b 1))))))    ;;右上角
