; Test Problem 9 - Calling lambda procedures (lexical scoping)

; Test basic lambda call
(define square (lambda (x) (* x x)))
; expect square

(square 5)
; expect 25

(square 10)
; expect 100

; Test multi-parameter lambda
(define add (lambda (x y) (+ x y)))
; expect add

(add 3 7)
; expect 10

; Test multi-expression body
(define print-and-double (lambda (x) (print x) (* x 2)))
; expect print-and-double

(print-and-double 5)
; expect 5
; expect 10

; Test nested calls
(define double (lambda (x) (* 2 x)))
; expect double

(double (double 3))
; expect 12

; Test lexical scoping
(define x 10)
; expect x

(define get-x (lambda () x))
; expect get-x

(get-x)
; expect 10

(define make-adder (lambda (n) (lambda (x) (+ x n))))
; expect make-adder

(define add5 (make-adder 5))
; expect add5

(add5 10)
; expect 15

; Test higher-order functions
(define compose (lambda (f g) (lambda (x) (f (g x)))))
; expect compose

(define add1 (lambda (x) (+ x 1)))
; expect add1

(define times2 (lambda (x) (* x 2)))
; expect times2

((compose times2 add1) 5)
; expect 12
