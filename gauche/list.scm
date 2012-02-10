(define (append2 a b)
  (if (pair? a)
      (cons (car a) (append2 (cdr a) b))
      b))
(define (reverse lis)
  (if (null? (cdr lis))
      lis
      (append2 (reverse (cdr lis)) (list (car lis)))))

(define (reverse2 lis)
  (define (reverse-rec lis ret)
    (if (null? lis)
        ret
        (reverse-rec (cdr lis) (cons (car lis) ret))))
  (reverse-rec lis ()))

(define (find pred lis)
  (if (null? lis)
      #f
      (if (pred (car lis))
          (car lis)
          (find pred (cdr lis)))))

(define (length2 lis)
  (fold (lambda (a b) (+ b 1)) 0 lis))

(define (for-each-numbers proc lis)
  (for-each proc (filter number? lis)))
