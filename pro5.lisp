;;我是手写党
(* 9 8 7 5)
(* 1 5 7 9 11 13 16 17 19)
;;看完就湿了，就求个最小公倍数么。
(defun full-lcm (limit)
  (apply #'lcm (loop for i from 1 to limit collect i))) 
(defun euler5 () (full-lcm 20))
(euler5)
;then I found a easier one.......
(reduce #'lcm '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
