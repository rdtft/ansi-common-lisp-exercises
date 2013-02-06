(defun apply8 (fn args)
  (let ((*print-base* 8))
    (apply fn args)))
