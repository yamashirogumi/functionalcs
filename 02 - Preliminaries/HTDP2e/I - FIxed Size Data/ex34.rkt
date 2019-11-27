;Exercise 34. Design the function string-first,
;which extracts the first character from a non-empty string.
;Don’t worry about empty strings.

;String -> String
;extract 1st char from String
;given:
;  "Casa" for x,
;expected:
;  (string-ith "Casa" 0)

(define (string-first x)
  (string-ith x 0))

(string-first "Electroencefalograma")