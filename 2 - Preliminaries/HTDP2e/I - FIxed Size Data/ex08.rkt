(require 2htdp/image)

; Create a conditional expression that computes whether the image is tall or wide. An image should be labeled "tall" 
; if its height is larger than or equal to its width; otherwise it is "wide".
; Picture of cat: https://htdp.org/2019-02-24/cat1.png

(define cat #|[PICTUREOFCAT]#| )
(define (tallORwide image)
  (if (> (image-height image) (image-width image)) "tall" "wide"))

(tallORwide cat)
