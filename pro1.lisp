;define a function to sum up list elements
(defun list-sum-up (lst)
  (if (null lst)
    0
    (+ (car lst) (list-sum-up (cdr lst))))) 
(list-sum-up '(1 3 4 5 6 7 6))
;judge whether an element is devided by 3
(defun mul3 (x)
 (if (equal 0 (mod x 3)) t nil))
(defun mul5 (x)
 (if (equal 0 (mod x 5)) t nil))
;(mul3 15)
;lst processing
(defun mul3-list (lst)
  (remove-if-not #'mul3 lst))
;(mul3-list '(1 2 3 4 5 6 7 8 9))
(defun mul5-list (lst)
  (remove-if-not #'mul5 lst))
;(mul5-list '(1 2 3 4 5 6 7 8 9 10))
;生成1到num的sets
(defun all-list (num)
  (if (equal num 0)
    nil
    (cons num (all-list (- num 1)))))
;
(list-sum-up (union (mul5-list (all-list 999)) (mul3-list (all-list 999))))

