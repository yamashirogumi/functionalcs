; Exercise 4. Use the same setup as in exercise 3 to create an expression that deletes the ith position
; from str. Clearly this expression creates a shorter string than the given one. 
; Which values for i are legitimate? 

(define str "helloworld")
(define i 5)

(define (removeletter word pos)
  (string-append
    (substring word (- pos 1))
    (substring word (+ pos 1)))

(removeletter str i)