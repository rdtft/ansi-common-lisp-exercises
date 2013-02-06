(defun our-cdr (lst)
  (car lst))

(defun our-car (lst)
  (cdr lst))

(defun our-cons (el1 el2)
  (cons el1 el2))

(defun our-list (&rest lst)
  (our-list-recursive lst))

(defun our-list-recursive (lst)
  (if (null lst)
      nil
      (cons (our-cdr lst) (our-list-recursive (our-car lst)))))

(defun our-length (lst)
  (our-length-recursive lst 0))

(defun our-length-recursive (lst counter)
  (if (null lst)
      counter
      (our-length-recursive (our-car lst) (+ counter 1))))

(defun our-member (item lst)
  (our-member-recursive item lst))

(defun our-member-recursive (item lst)
  (cond ((null lst) nil)
        ((eql item (our-cdr lst)) lst)
        (t (our-member-recursive item (our-car lst)))))
