(defparameter *comment-marker* #\%)

(defun remove-comments (in out)
  (with-open-file (out-stream out :direction :output
                              :if-exists :supersede)
    (with-open-file (in-stream in :direction :input)
      (do ((line (read-line in-stream nil 'eof)
                 (read-line in-stream nil 'eof)))
	  ((eql line 'eof))
        (let ((pos (position *comment-marker* line)))
          (if pos
	      (format out-stream "~A~%" (subseq line 0 pos))
	      (format out-stream "~A~%" line)))))))
