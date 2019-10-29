;Exercise 15. Define ==>.The function consumes two Boolean values, call them sunny and friday.
;Its answer is #true if sunny is false or friday is true.
;Note Logicians call this Boolean operation implication, and they use the notation sunny => friday for this purpose. 

(define (=> sunny friday)
  (if (or (not sunny) friday) #true #false))

  
(check-expect (=> #true #true) #true)
(check-expect (=> #true #false) #false)
(check-expect (=> #false #true) #true)
(check-expect (=> #false #false) #true)
    