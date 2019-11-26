;Exercise 19. Define the function string-insert, which consumes a string str plus a number i and inserts "_" at the ith position of str.
;Assume i is a number between 0 and the length of the given string (inclusive).
;See exercise 3 for ideas. Ponder how string-insert copes with "".

(define (string-insert Str Num)
  (string-append
   (substring Str 0 Num)
   "_"
   (substring Str Num)))

(check-expect (string-insert "pepe" 2) "pe_pe")
                