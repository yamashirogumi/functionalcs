; Basically the same as Ex13, but using the last letter instead.

(define (string-last String)
  (if (and (string? String) #true)
      (if (>= (string-length String) 1)
          (string-ith String (- (string-length String) 1)) "invalid") "not a string"))

(check-expect (string-last "electroencefalograma") "a")