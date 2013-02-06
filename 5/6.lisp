; (intersprese '- '(a b c d))
; (A - B - C - D)

(defun recursive-intersprese (x lst)
  (cond ((null lst) nil)
        ((null (cdr lst)) (cons (car lst) nil))
        (t
	 (cons (car lst)
	       (cons x (recursive-intersprese x (cdr lst)))))))

(defun iterative-intersprese (obj lst)
  (let ((acc nil)
        (len (length lst)))
    (dotimes (i (- len 1))
      (push (list (nth i lst) obj) acc))

    (push (cons (nth (- len 1) lst) nil) acc)
    (reduce #'append (reverse acc))))
