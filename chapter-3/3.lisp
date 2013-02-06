(defun occurrences (lst)
  (let ((table (occurrences-recur lst nil)))
    (sort (copy-list table) #'> :key #'cdr)))

(defun occurrences-recur (lst table)
  (if (null lst)
      table
      (let ((element (car lst)))
	(if (assoc element table)
	    (let ((assoc-value (cdr (assoc element table))))
	      (progn
		(setf (cdr (assoc element table)) (+ assoc-value 1))
		(occurrences-recur (cdr lst) table)))
	    (progn
	      (setf table (append table (list (cons element 1))))
	      (occurrences-recur (cdr lst) table))))))
