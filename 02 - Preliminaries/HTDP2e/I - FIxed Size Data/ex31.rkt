#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex32) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)

(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter (read-file in-fst)
                      (read-file in-lst)
                      (read-file in-signature))))

(define (letter in-fst in-lst in-signature)
  (string-append
   (opening in-fst)
  "\n\n"
  (body in-fst in-lst)
  "\n\n"
  (closing in-signature)))

(define (opening in-fst)
  (string-append " Dear " in-fst ", "))

(define (body in-fst in-lst)
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " in-lst " have won our lottery. So, " "\n"
   in-fst ", " "hurry and pick up your prize."))

(define (closing in-signature)
  (string-append
   "Gracias por todo,"
   "\n\n"
  in-signature
   "\n"))

(main "nombre" "apellido" "firma" "carta.txt")