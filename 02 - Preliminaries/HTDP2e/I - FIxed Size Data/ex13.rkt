;Exercise 13. Define the function string-first, 
;which extracts the first 1String from a non-empty string. 

(define (string-first String)
  (if (and (string? String) #true)
      (if (>= (string-length String) 1)
          (string-ith String 0) "invalid") "not a string"))

(check-expect (string-first "electroencefalograma") "e")