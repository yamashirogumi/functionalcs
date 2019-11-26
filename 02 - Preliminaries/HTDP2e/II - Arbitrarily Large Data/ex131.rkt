; Exercise 131. Provide a data definition for representing lists of Boolean values.
; The class contains all arbitrarily long lists of Booleans. 

'()
(cons #true '())
(cons #true (cons #false) '())