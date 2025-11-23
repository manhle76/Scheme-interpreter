; Test Problem 6 - eval_all and begin special form

; Test begin returns last value
(begin (+ 2 3) (+ 5 6))
; expect 11

(begin 1 2 3 4)
; expect 4

; Test begin with side effects
(begin (print 1) (print 2) 3)
; expect 1
; expect 2
; expect 3

; Test begin in definition
(define x (begin (display 3) (newline) (+ 2 3)))
; expect 3
; expect x

x
; expect 5

(+ x 3)
; expect 8

; Test begin with print and quote
(begin (print 3) '(+ 2 3))
; expect 3
; expect (+ 2 3)

; Test single expression begin
(begin 42)
; expect 42

; Test begin with definitions
(begin (define a 1) (define b 2) (+ a b))
; expect 3
