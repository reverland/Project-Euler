;first trial
(defun my-largest-factor (num)
  ( loop for n from (- num 1) downto 2
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

