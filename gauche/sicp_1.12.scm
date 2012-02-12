(define (pascal i j)
  (cond ((or (= j 1)(= i 1) (= i j)) 1)
        (else (+ (pascal (- i 1) (- j 1)) (pascal (- i 1) j)))))
            