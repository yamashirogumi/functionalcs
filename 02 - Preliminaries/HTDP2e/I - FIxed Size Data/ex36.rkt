;Exercise 36. Design the function image-area,
;which counts the number of pixels in a given image.

; Image -> Number
; Count pixels from image
; given:
; Image for x
; expected:
; (image-area x)
; (* (image-width x)
;   (image-height x))

(require 2htdp/image)

(define (image-area pic)
  (* (image-height pic)
     (image-width pic)))