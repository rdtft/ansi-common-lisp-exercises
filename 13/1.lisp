(defun our-listp (x)
  (or (null x)
      (consp x)))

(declaim (inline inline-our-listp))

(defun inline-our-listp (x)
  (or (null x)
      (consp x)))

(defun simple-func (lst)
  (our-listp lst))
;; ;; "home:src;ansi-common-lisp;13;1.lisp.newest":154-197
;; L0
;;   [0]     (leaq (@ (:^ L0) (% rip)) (% fn))
;;   [7]     (cmpl ($ 8) (% nargs))
;;   [10]    (jne L37)
;;   [12]    (pushq (% rbp))
;;   [13]    (movq (% rsp) (% rbp))
;;   [16]    (pushq (% arg_z))

;; ;;; (our-listp lst)
;;   [17]    (movl ($ 8) (% nargs))
;;   [22]    (movq (@ 'OUR-LISTP (% fn)) (% temp0))
;;   [29]    (leaveq)
;;   [30]    (jmpq (@ 10 (% temp0)))

;; ;;; #<no source text>
;; L37
;;   [37]    (uuo-error-wrong-number-of-args)
;; NIL

(defun inline-simple-func (lst)
  (inline-our-listp lst))

;; ;; "home:src;ansi-common-lisp;13;1.lisp.newest":199-256
;; L0
;;   [0]     (leaq (@ (:^ L0) (% rip)) (% fn))
;;   [7]     (cmpl ($ 8) (% nargs))
;;   [10]    (jne L69)
;;   [12]    (pushq (% rbp))
;;   [13]    (movq (% rsp) (% rbp))
;;   [16]    (pushq (% arg_z))

;; ;;; (inline-our-listp lst)
;;   [17]    (pushq (% arg_z))
;;   [18]    (cmpb ($ 11) (@ -16 (% rbp)))
;;   [22]    (movl ($ #x1300B) (% arg_z.l))
;;   [27]    (cmovel (@ 37 (% arg_z)) (% arg_z.l))
;;   [31]    (cmpb ($ 11) (% arg_z.b))
;;   [35]    (jne L60)
;;   [37]    (movq (@ -16 (% rbp)) (% arg_z))
;;   [41]    (movl (% arg_z.l) (% imm0.l))
;;   [43]    (andl ($ 15) (% imm0.l))
;;   [46]    (cmpb ($ 3) (% imm0.b))
;;   [49]    (movl ($ #x1300B) (% arg_z.l))
;;   [54]    (cmovel (@ 37 (% arg_z)) (% arg_z.l))
;;   [58]    (leaveq)
;;   [59]    (retq)
;; L60
;;   [60]    (leaveq)
;;   [61]    (retq)

;; ;;; #<no source text>
;; L69
;;   [69]    (uuo-error-wrong-number-of-args)
;; NIL
