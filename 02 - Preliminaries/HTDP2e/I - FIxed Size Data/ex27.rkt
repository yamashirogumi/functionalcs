(define change 0.1)
(define avg-change 15)
(define fixed-cost 180)
(define attnd-variable 0.04)
(define base-attnd 120)
(define base-ticket 5.0)



(define (attendees ticket-price)
  (- base-attnd (* (- ticket-price base-ticket) (/ avg-change change))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed-cost (* attnd-variable (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))


(profit 2)