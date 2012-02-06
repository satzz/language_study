(define (fold proc init lis)
  (if (null? lis)
      init
      (fold proc #?=(proc (car lis) init) #?=(cdr lis))))