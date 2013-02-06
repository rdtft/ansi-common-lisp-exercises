(defmacro if-cond (test then &optional (else nil))
  `(cond (,test ,then)
         (t ,else)))
