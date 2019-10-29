;Exercise 20. Define the function string-delete, which consumes a string plus a number i and deletes the ith position from str.
;Assume i is a number between 0 (inclusive) and the length of the given string (exclusive).
;See exercise 4 for ideas. Can string-delete deal with empty strings?

(define (string-delete Str Num)
  (string-append
   (substring Str 0 Num)
   (substring Str (+ Num 1))))


(check-expect (string-delete "" 3) "")
; out of bounds