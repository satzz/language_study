;SICP problem 1.31
(define (product func a b)
  (define (product-sub func c ret)
    (cond ((= c a) (func a))
          (else    (* (func c) (product-sub func (- c 1) ret)))))
  (product-sub func b 1))

(define (factorial n)
  (product (lambda (x) x) 1 n))

(define (sq n) (* n n))
(define (pi n)
  (* 4 (product (lambda (x) (- 1.0 (/ 1 (sq (+ (* 2 x) 1)) ))) 1 n)))
  
  
        
    