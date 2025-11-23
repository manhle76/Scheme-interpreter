; Test Problem 10 - Named procedure shorthand

; Test 1: Simple named procedure
(define (square x) (* x x))
; expect square

(square 5)
; expect 25

; Test 2: Multi-parameter
(define (add x y) (+ x y))
; expect add

(add 3 7)
; expect 10

; Test 3: Multi-expression body
(define (g y) (print y) (+ y 1))
; expect g

(g 3)
; expect 3
; expect 4

; Test 4: Zero parameters
(define (get-42) 42)
; expect get-42

(get-42)
; expect 42

; Test 5: Nested definition and call
(define (double x) (* 2 x))
; expect double

(define (quadruple x) (double (double x)))
; expect quadruple

(quadruple 5)
; expect 20

; Test 6: Recursive function
(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))
; expect factorial

(factorial 5)
; expect 120

; Test 7: Complex function with begin
(define (complex-func a b)
  (begin
    (define temp (+ a b))
    (* temp 2)))
; expect complex-func

(complex-func 3 4)
; expect 14
