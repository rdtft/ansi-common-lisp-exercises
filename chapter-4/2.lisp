(defun our-copy-list (lst)
  (reduce #'cons lst :from-end t :initial-value nil))

(defun our-reverse (lst)
  (reduce #'(lambda (x y) (cons y x)) lst :initial-value nil))