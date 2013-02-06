(defmacro our-double (x)
  `(setf ,x (+ ,x ,x)))
