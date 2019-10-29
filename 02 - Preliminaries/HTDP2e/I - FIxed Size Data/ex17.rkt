(require 2htdp/image)

;Exercise 17. Define the function image-classify, which consumes an image and conditionally produces "tall"
;if the image is taller than wide, "wide" if it is wider than tall, or "square" if its width and height are the same.
;See exercise 8 for ideas

(define thing (rectangle 20 21 "solid" "blue"))

(define (tallORwide image)
  (if (> (image-height image) (image-width image)) "tall"
      (if (< (image-height image) (image-width image)) "wide" "square")))

(tallORwide thing)
  