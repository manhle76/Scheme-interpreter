; Test Problem 8 - Frame.make_child_frame
; Note: Problem 8 is mainly tested through Problem 9
; This file tests edge cases that can be observed

; Test that procedures work (requires make_child_frame)
(define id (lambda (x) x))
; expect id

(id 5)
; expect 5

; Test multiple parameters
(define add3 (lambda (a b c) (+ a b c)))
; expect add3

(add3 1 2 3)
; expect 6

; Test no parameters
(define get-10 (lambda () 10))
; expect get-10

(get-10)
; expect 10

; Test that parameter binding works
(define test (lambda (x y) (+ x (* 2 y))))
; expect test

(test 5 3)
; expect 11
