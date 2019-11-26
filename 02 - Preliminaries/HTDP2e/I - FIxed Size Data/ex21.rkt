;Exercise 21. Use DrRacket’s stepper to evaluate (ff (ff 1)) step-by-step.
;Also try (+ (ff 1) (ff 1)). Does DrRacket’s stepper reuse the results of computations? 

(define (ff a) (* a a))
(+ (ff (ff (ff 10))) (ff (ff (ff 10))))


