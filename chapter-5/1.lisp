; (let ((x (car y)))
;  (cons x x))

(setf let1
      ((lambda (y)
         ((lambda (x)
            (cons x x))
          (car y)))
       '(a b)))

; => (A . A)


; (let *((w (car x))
;       (y (+ w z)))
;     (cons w y))


(setf z 10)
(setf let2
      ((lambda (x)
         ((lambda (w)
            ((lambda (y)
               (cons w y))
             (+ w z)))
          (car x)))
       '(1 2)))

; => (1 . 11)
