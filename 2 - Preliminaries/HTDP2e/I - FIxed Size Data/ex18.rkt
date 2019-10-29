;Exercise 18. Define the function string-join, which consumes two strings and appends them with "_" in between.
;See exercise 2 for ideas.

(define (string-join string1 string2)
  (if (and (string? string1) (string? string2))
      (string-append string1 "_" string2)
      "One of them isn't a string"))

(check-expect (string-join "first" "second") "first_second")