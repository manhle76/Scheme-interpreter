; Test Problem 3 - Evaluating call expressions

; Test nested arithmetic
(+ (* 2 3) (- 10 5))
; expect 11

(* (+ 1 2) (+ 3 4))
; expect 21

; Test deeply nested expressions
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
; expect 57

; Test multiple operands
(+ 1 2 3 4 5)
; expect 15

(* 2 3 4 5)
; expect 120

; Test call with single operand
(- 10)
; expect -10

; Test operator evaluation
((if #t + -) 3 2)
; expect 5

((if #f + -) 3 2)
; expect 1
