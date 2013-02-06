(defun change (cents)
  (let*
      ((25cents (truncate (float (/ cents 25))))

       (10cents (truncate (float (/ (- cents
				       (* 25cents 25))
				    10))))

       (5cents (truncate (float (/ (- cents
				      (* 25cents 25)
				      (* 10cents 10))
				   5))))

       (1cents (- cents
		  (* 25cents 25)
		  (* 10cents 10)
		  (* 5cents 5))))
    (values
     25cents
     10cents
     5cents
     1cents)))
