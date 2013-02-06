(defun new-union (lst1 lst2)
  (cond ((null lst2) lst1)
        ((not (member (car lst2) lst1)) (new-union (append lst1 (list (car lst2))) (cdr lst2)))
        (t (new-union lst1 (cdr lst2)))))
