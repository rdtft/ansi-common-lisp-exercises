(defun pos+ (lst)
  (recursive-pos+ lst 0))

(defun recursive-pos+ (lst couter)
  (if (null lst)
      nil
      (cons (+ (car lst) couter) (recursive-pos+ (cdr lst) (+ couter 1)))))

(defun iterative-post+ (lst)
  (let ((couter 0)
        (new-list '()))
    (dolist (el lst)
      (progn
        (setf new-list (append new-list (list (+ el couter))))
        (setf couter (+ couter 1))))
    new-list))

(defun map-post+ (lst)
  (let ((conter 0))
    (mapcar #'(lambda (x)
                (let ((result (+ conter x)))
                  (setf conter (+ conter 1))
                  result)) lst)))
