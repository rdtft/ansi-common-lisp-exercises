(defconstant month
  #(0 31 59 90 120 151 181 212 243 273 304 334 365))

(defun leap? (y)
  (and (zerop (mod y 4))
       (or (zerop (mod y 400))
           (not (zerop (mod y 100))))))

(defun month-num (m y)
  (+ (svref month (- m 1))
     (if (and (> m 2) (leap? y)) 1 0)))


(defun our-month-num (m y)
  (+
   (case m
     (1 0)
     (2 31)
     (3 59)
     (4 90)
     (5 120)
     (6 151)
     (7 181)
     (8 212)
     (9 243)
     (10 273)
     (11 304)
     (12 334)
     (13 365))
   (if (and (> m 2) (leap? y)) 1 0)))
