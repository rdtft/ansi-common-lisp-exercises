(let ((x 'a)
      (y 'b)
      (z '(c d)))

  (pprint `(,z ,x z))
  (pprint `(x ,y ,@z))
  (pprint `((,@z ,x) z)))
