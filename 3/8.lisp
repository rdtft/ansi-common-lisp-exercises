(defun showdots (lst)
  (showdots-recursive lst 0))

(defun showdots-recursive (lst counter)
  (if (null lst)
      (progn
	(format t " NIL")
	(dotimes (x counter)
	  (format t ")")))
      (progn
	(format t " (~A ." (car lst))
	(showdots-recursive (cdr lst) (+ counter 1)))))

; (showdots '(a b c))
; (A . (B . (C . NIL)))

