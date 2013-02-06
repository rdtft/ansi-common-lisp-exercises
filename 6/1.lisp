(defun tokens (str &key (test #'constituent) (start 0))
  (let ((p1 (position-if test str :start start)))
    (if p1
	(let ((p2 (position-if #'(lambda (c)
				   (not (funcall test c)))
			       str :start p1)))
	  (cons (subseq str p1 p2)
		(if p2
		    (tokens str :start p2)
		    nil)))
	nil)))

(defun constituent (c)
  (and (graphic-char-p c)
       (not (char= c #\ ))))
