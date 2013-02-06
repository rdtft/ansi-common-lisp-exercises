(defun rec-diff-sub-1 (lst)
  (if (null (cdr lst))
      t
      (and (= 1 (abs (- (first lst) (second lst))))
	   (rec-diff-sub-1 (cdr lst)))))

(defun do-diff-sub-1 (lst)
  (do ((x (first lst) (first lst))
       (y (second lst) (second lst)))
      ((null (cdr lst)) t)
    (if (not (= (abs (- x y)) 1))
	(return nil)
	(setf lst (cdr lst)))))

(defun mapc-diff-sub-1 (lst)
  (mapc #'(lambda (a b)
            (if (not (= (abs (- a b)) 1))
		(return-from mapc-diff-sub-1 nil))) lst (cdr lst))
  t)
