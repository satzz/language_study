(define (copy-list lis)
  (if (pair? lis)
      (cons (car lis) (copy-list (cdr lis)))
      lis))