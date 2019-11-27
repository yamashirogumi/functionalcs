;Exercise 37. Design the function string-rest, which produces a string
;like the given one with the first character removed.

; String -> String
; Output new string without first character
; given "Casa" for x
; expected (string-rest x) ...
; where ... is:
; (substring x 1)


(define (string-rest x)
  (substring x 1))

(check-expect (string-rest "casa") "asa")