(require 2htdp/image)
;Exercise 9. Add the following line to the definitions area of DrRacket:
;(define in ...)
;
;Then create an expression that converts the value of in to a positive number.
;For a String, it determines how long the String is; for an Image, it uses the area;
;for a Number, it decrements the number by 1, unless it is already 0 or negative;
;for #true it uses 10 and for #false 20.


(define (convert thing)
(if (and (string? thing) #true) (string-length thing)
(if (image? thing) (* (image-width thing) (image-height thing)) 
(if (and (boolean? thing) (and thing #true)) 10 
(if (or (boolean? thing) (or thing #false)) 20
(if (and (number? thing) (> thing 0)) (- thing 1) thing))))))


(convert #true)

;kinda messed up the order but it's alright
