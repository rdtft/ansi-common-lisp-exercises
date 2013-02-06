(defmacro n-of (n expr)
  (let ((g (gensym))
        (h (gensym)))
    `(let ((,g nil))
       (dotimes (,h ,n)
         (push ,expr ,g))

       (nreverse ,g))))
