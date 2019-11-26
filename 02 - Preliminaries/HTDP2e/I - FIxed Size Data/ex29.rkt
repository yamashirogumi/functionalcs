#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex32) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;Exercise 29. After studying the costs of a show, the owner discovered several ways of lowering the cost.
;As a result of these improvements, there is no longer a fixed cost; a variable cost of $1.50 per attendee remains.

(define CHANGE 0.1)
(define AVG-CHANGE 15)
(define BASE-TICKET 5.0)
(define FIXED-COST 1.50)
(define AVG-ATTENDANCE 120)


(define (attendees ticket-price)
  (- AVG-ATTENDANCE (* (- ticket-price BASE-TICKET) (/ AVG-CHANGE CHANGE))))

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
(profit 4) ;winner
(profit 5)