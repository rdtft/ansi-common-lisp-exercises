; (precedes #\a "abracadabra")
; => (#\c #\d #\r)

(defun rec-precedes (x v)
  (remove-duplicates (recursive-precedes x v 1 (length v))))

(defun recursive-precedes (x v pos length)
  (if (= pos length)
      nil
      (if (eql (aref v pos) x)
	  (cons (aref v (1- pos))
		(recursive-precedes x v (1+ pos) length))
	  (recursive-precedes x v (1+ pos) length))))


(defun iter-precedes (x v)
  (remove-duplicates (iterative-precedes x v)))

(defun iterative-precedes (x v)
  (let ((len (1- (length v)))
        (acc nil))
    (do ((i 1 (+ i 1)))
	((> i len))
      (if (eql x (aref v i))
	  (push (aref v (- i 1)) acc)))
    acc))
