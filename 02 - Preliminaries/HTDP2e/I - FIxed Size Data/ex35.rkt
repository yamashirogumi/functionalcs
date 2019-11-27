;Exercise 35. Design the function string-last,
;which extracts the last character from a non-empty string. :;


;String -> String
;extract last char from String
;given:
;  "Palabra" for x
;expected:
; (last-string x)
;    (string-ith x (- (string-length x) 1)))
; (last-string "casa")
; expected: a

(define (last-string x)
  (string-ith x (- (string-length x) 1)))

(check-expect (last-string "casa") "a")