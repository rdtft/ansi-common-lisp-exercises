(defun most2 (fn lst)
  (cond ((null lst) (values nil nil))
        ((<= (length lst) 2) (values (first lst) (second lst)))
        (t
	 (let* ((wins (list (first lst)
			    (second lst)))
		(maxs (list (funcall fn (first lst))
			    (funcall fn (second lst)))))

	   (if (< (first maxs) (second maxs))
	       (setf wins (reverse wins)
		     maxs (reverse maxs)))

	   (dolist (obj (cddr lst))
	     (let ((score (funcall fn obj)))
	       (cond ((and (> score (first maxs))
			   (< score (second maxs)))
		      (setf (first maxs) score
			    (first wins) obj))

		     ((and (> score (first maxs))
			   (> score (second maxs)))
		      (setf (second maxs) (first maxs)
			    (second wins) (first wins)
			    (first maxs) score
			    (first wins) obj)))))
	   (values wins)))))
