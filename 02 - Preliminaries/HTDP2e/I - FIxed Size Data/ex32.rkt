;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex32) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;(define (number->square s)
;  (square s "solid" "red"))
;
;(define (reset s ke) 100)
;(define cw1 (ke-h cw0 "a"))
;(define cw2 (tock cw1))
;(define cwe (me-h cw2 90 100 "button-down"))

(define BACKGROUND (empty-scene 500 500))
(define DOT (circle 3 "solid" "red"))

(define (main y)
  (big-bang y
    [on-tick sub1]
    [stop-when zero?]
    [to-draw place-dot-at]
    [on-key stop]))

(define (place-dot-at y)
  (place-image DOT 50 y BACKGROUND))

(define (stop y ke) 0)

(main 30)