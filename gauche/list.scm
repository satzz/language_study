(define (append2 a b)
  (if (pair? a)
      (cons (car a) (append2 (cdr a) b))
      b))
(define (reverse lis)
  (if (null? (cdr lis))
      lis
      (append2 (reverse (cdr lis)) (list (car lis)))))
(define (find pred lis)
  (if (null? lis)
      #f
      (if (pred (car lis))
          (car lis)
          (find pred (cdr lis)))))