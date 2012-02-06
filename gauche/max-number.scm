(define (max-number lis) 
  (define (pick-greater a b) 
    (if (> a b) a b))
  (if (null? lis)
      (error "max-number needs at least one number")
      (fold pick-greater (car lis) (cdr lis))))