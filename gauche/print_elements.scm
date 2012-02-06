(define (print-elements lis)
  (define (print-one-element a b) (print a))
  (fold print-one-element #f lis))
