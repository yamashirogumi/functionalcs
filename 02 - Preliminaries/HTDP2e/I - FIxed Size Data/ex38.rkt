;Exercise 38. Design the function string-remove-last,
;which produces a string like the given one with the last character removed. 

; String -> String
; Output new string without first character
; given "Casa" for x
; expected (string-rmove-last x) ...
; where ... is:
; (substring x 0 (- (string-length x) 1))


(define (string-remove-last x)
  (substring x 0 (- (string-length x) 1 )))

(check-expect (string-remove-last "casa") "cas")