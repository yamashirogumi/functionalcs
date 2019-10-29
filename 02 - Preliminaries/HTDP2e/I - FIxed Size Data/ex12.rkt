; Exercise 12. Define the function cvolume, which accepts the length of a side of an equilateral cube 
; and computes its volume. If you have time, consider defining csurface, too.

; cvolume and altrnative version using expt primitive

(define (cvolume side)
    (* side side side))


(define (cvolume2 side)
  (expt side 3))

; surface and altrnative version using expt primitive

(define (csurface side)
    (* 6 (* side side)))

(define (csurface2 side)
    (* 6 (expt side 2)))

