(require 2htdp/image)
(require 2htdp/universe)

(define WIDTH-OF-WORLD 200)
(define WHEEL-RADIUS 25)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 2))

; wheel 
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
; space between wheels oddly enough HTDP suggest white instead of transparent
(define SPACE
  (rectangle WHEEL-DISTANCE WHEEL-RADIUS "solid" "transparent"))
; both space and wheels aligned
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

; define car chassis, e.g,: everything but the wheels.
(define CHASSIS
   (overlay/align "center" "bottom" 
  (rectangle (* 4 WHEEL-DISTANCE) (* 2 WHEEL-RADIUS) "solid" "red")
  (rectangle (* 2 WHEEL-DISTANCE) (* 3 WHEEL-RADIUS) "solid" "red")))
; car 
(define CAR
  (overlay/align/offset
   "center" "bottom"
   BOTH-WHEELS
   0 (* -1 WHEEL-RADIUS)
   CHASSIS))