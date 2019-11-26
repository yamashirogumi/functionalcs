;Exercise 30. Define constants for the price optimization program at the movie theater so that the price 
;sensitivity of attendance (15 people for every 10 cents) becomes a computed constant. 

(define CHANGE 0.1)
(define AVG-CHANGE 15)
(define BASE-TICKET 5.0)
(define FIXED-COST 1.50)
(define AVG-ATTENDANCE 120)

(define SENSITIVITY (/ AVG-CHANGE CHANGE))

(define (attendees ticket-price)
  (- AVG-ATTENDANCE (* (- ticket-price BASE-TICKET) SENSITIVITY )))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* FIXED-COST (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))


(profit 1)
(profit 2)
(profit 3) 
(profit 4) ; MOST PROFITABLE
(profit 5)