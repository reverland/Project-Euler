;define a function to sum up list elements
(defun list-sum-up (lst)
  (if (null lst)
    0
    (+ (car lst) (list-sum-up (cdr lst))))) 
;(list-sum-up '(1 3 4 5 6 7 6)) 
;fiboracci
(defun fib (num)
  (if (< num 3)  
    num 
    (+ (fib (- num 1)) (fib (- num 2)))))
;(trace fib)
;(fib 4)
;list
(defun fib-list (num)
  (if (= num 0)
    nil
    (cons (fib num) (fib-list (- num 1)))))
;(fib-list 4)
;tickout even-equal
(defun even-equal-fib (lst)
  (remove-if #'oddp lst ))
;(even-equal-fib '(1 2 3 4 5 6 7 8))
;find not exceed 4 million
;loop
;then I found (fib 33) is 5702887
(list-sum-up (even-equal-fib (fib-list 32)))
