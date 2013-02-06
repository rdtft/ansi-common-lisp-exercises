(defun expensive (x)
  (format t "expensive function call~%")
  (+ x 42))

(let ((results '()))
  (defun flugal (x)
    (let ((result (assoc x results)))
      (if result
	  (cdr result)
	  (progn
	    (let ((expensive-result (expensive x)))
	      (push (cons x expensive-result) results)
	      expensive-result))))))
