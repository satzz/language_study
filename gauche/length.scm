(define (length lis)
  (define (increment2 a b) (+ b 1))
  (fold increment2 0 lis))