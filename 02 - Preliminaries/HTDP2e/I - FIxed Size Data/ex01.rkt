; Exercise 1. Add the following definitions for x and y to DrRacket’s definitions area:
 (define x 3)
 (define y 4)
; Now imagine that x and y are the coordinates of a Cartesian point. Write down an expression that 
; computes the distance of this point to the origin, that is, a point with the coordinates (0,0).

(define (origin x y)
  (sqrt (+ (* x x) (* y y))))

(origin x y)