(defun quarter-turn (arr)
  (let* ((dimensions (array-dimensions arr))
         (row (first dimensions))
         (column (second dimensions))
         (quarter-array (make-array dimensions)))

    (do ((x (1- row) (1- x))
         (y 0 (1+ y)))
	((< x 0) 'done)
      (format t "~A~%" (aref arr x y)))))

; (quarter-turn #2A((a b) (c d)))
; => #2A((C A) (D B))
;
; (quarter-turn #2A((a b c) (d e f) (g h i)))
; => #2A((G D A) (H E B) (I F C))
