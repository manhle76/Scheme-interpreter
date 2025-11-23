; Test Problem 7 - do_lambda_form (creating lambda procedures)

; Test basic lambda creation
(lambda (x) (+ x 1))
; expect (lambda (x) (+ x 1))

(lambda (x y) (+ x y))
; expect (lambda (x y) (+ x y))

; Test lambda with no parameters
(lambda () 42)
; expect (lambda () 42)

; Test lambda with multiple expressions in body
(lambda (x) (print x) (* x 2))
; expect (lambda (x) (print x) (* x 2))

; Test lambda stored in variable
(define f (lambda (x) (* x x)))
; expect f

f
; expect (lambda (x) (* x x))

; Test nested lambda
(lambda (x) (lambda (y) (+ x y)))
; expect (lambda (x) (lambda (y) (+ x y)))
