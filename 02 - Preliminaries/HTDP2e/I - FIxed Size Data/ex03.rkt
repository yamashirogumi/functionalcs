; Exercise 3. Add the following two lines to the definitions area:
(define str "helloworld")
(define i 5)
; Then create an expression using string primitives that adds "_" at position i.
; In general this means the resulting string is longer than the original one; here the expected result is
; "hello_world".


(define (underscore word pos)
  (string-append
   (substring word 0 pos)
   "_"
   (substring word pos)))

(underscore str i)