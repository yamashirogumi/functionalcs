;Exercise 16. Define the function image-area, which counts the number of pixels in a given image.
;See exercise 6 for ideas. 

(define (image-area image)
  (* (image-height image) (image-length image)))

