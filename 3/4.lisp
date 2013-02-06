(member '(a) '((a) (b)))
; NIL

; The equality test defaults to eql

(eql '(a) '(a))
; NIL

(member '(a) '((a) (b)) :test #'equal)
