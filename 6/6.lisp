(let ((num 0)
      (first-call? t))
  (defun biggest (n)
    (cond
      ((not (integerp n)) num)
      (first-call? (setf first-call? nil num n))
      ((> n num) (setf num n))
      (t num))))
