(defun vector-extremum (vec)
  (recursive-vector-extremun
   vec
   1
   (length vec)
   (svref vec 0)
   (svref vec 0)))

(defun recursive-vector-extremun (vec pos len max min)
  (if (= pos len)
      (values max min)
      (let ((next (svref vec pos)))
	(recursive-vector-extremun
	 vec
	 (+ pos 1)
	 len
	 (if (> max next) max next)
	 (if (< min next) min next)))))
