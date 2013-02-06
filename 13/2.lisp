(defun foo (x)
  (if (zerop x)
      0
      (+ 1 (foo (1- x)))))

;; (FOO 10000) took 115 microseconds (0.000115 seconds) to run 
;;                     with 2 available CPU cores.
;; During that period, 112 microseconds (0.000112 seconds) were spent in user mode
;;                     12 microseconds (0.000012 seconds) were spent in system mode
;; 10000

(defun foo-rec (x sum)
  (if (zerop x)
      sum
      (foo-rec (1- x) (1+ sum))))

;; (FOO-REC 10000 0) took 90 microseconds (0.000090 seconds) to run 
;;                     with 2 available CPU cores.
;; During that period, 88 microseconds (0.000088 seconds) were spent in user mode
;;                     13 microseconds (0.000013 seconds) were spent in system mode
;; 10000
