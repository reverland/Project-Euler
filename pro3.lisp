;first trial
(defun my-largest-factor (num)
  (loop for n from (- num 1) downto 2
         when (zerop (mod num n)) 
         return n))
;(my-largest-factor 600851475143)
;(my-largest-factor 6)
;find this
(defun largest-factor (num)
  (if (null (my-largest-factor num))
    num
    (largest-factor (my-largest-factor num))))
(largest-factor 1300)
;......现在还没算完，pe上的不是设计成一分钟内完成？果然算法有问题
;论坛上看到的
(defun primfac (num) 
  (when (> num 1) 
    (do ((x 2 (1+ x)))
      ((zerop (mod num x))
       (cons x (primfac (/ num x)))))))
(primfac 600851475143)

