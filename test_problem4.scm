; Test Problem 4 - Symbol definition with define

; Test basic definition
(define x 10)
; expect x

x
; expect 10

; Test definition with expression
(define y (+ 5 3))
; expect y

y
; expect 8

; Test definition using other variables
(define z (* x y))
; expect z

z
; expect 80

; Test redefinition
(define x 20)
; expect x

x
; expect 20

; Test definition with complex expression
(define result (+ (* 3 4) (- 10 5)))
; expect result

result
; expect 17

; Test that operator is evaluated only once
(define counter 0)
; expect counter

((define counter (+ counter 1)) 2)
; expect Error

counter
; expect 1
