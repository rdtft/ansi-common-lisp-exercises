(defmacro nth-expr (n &rest exprs)
  (nth (- n 1) exprs))
