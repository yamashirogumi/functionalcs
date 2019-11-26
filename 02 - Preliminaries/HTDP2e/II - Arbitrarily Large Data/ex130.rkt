;Exercise 130. Create an element of List-of-names that contains five Strings. 
;Sketch a box representation of the list similar to those found in figure 44.

(cons "John"
    (cons "Paul"
        (cons "Matthew"
            (cons "Peter"
                (cons "James" '())))))


; Explain why (cons "1" (cons "2" '()))
;is an element of List-of-names and why (cons 2 '()) isn’t.

; Answer: Likely because "List-of-names" takes a String as an argument and 2 minus the quotes around it is an integer.


        