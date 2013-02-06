(pprint
 (list (list 'a) (list 'a) (list 'a)))

(pprint
 (let ((el (list 'a)))
   (list el el el)))

(pprint
 (let ((el (list 'a)))
   (list el el (list 'a))))
