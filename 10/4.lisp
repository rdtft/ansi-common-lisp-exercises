(defmacro ntimes (n &rest body)
  `(labels ((ntimes-rec (i)
	      (when (not (zerop i))
		,@body
		(ntimes-rec (1- i)))))
     (ntimes-rec ,n)))
