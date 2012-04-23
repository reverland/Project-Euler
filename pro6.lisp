(defun difference ()
  (- (square-sum 100) (sum-square 100))) 
(defun square-sum (num)
  (if (= num 1)
    1
    (+ (* num num) (square-sum (- num 1)))))
(defun sum (num)
  (if (= num 1)
    1
    (+ num (sum (- num 1)))))
(defun sum-square (num)
  (* (sum num) (sum num)))
(difference)
