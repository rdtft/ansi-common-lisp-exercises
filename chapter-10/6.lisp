(defmacro revert-vars (vars &body body)
  `(let ,(mapcar #'(lambda (name)
                     `(,name ,name)) vars)
     ,@body))
