; Test Problem 2 - Calling built-in procedures

; Test basic arithmetic
(+ 1 2)
; expect 3

(+ 1 2 3 4)
; expect 10

(- 10 5)
; expect 5

(* 3 4)
; expect 12

(* 2 3 4)
; expect 24

(/ 10 2)
; expect 5

; Test comparison operators
(> 5 3)
; expect #t

(< 5 3)
; expect #f

(= 5 5)
; expect #t

; Test predicates
(odd? 3)
; expect #t

(even? 3)
; expect #f

(null? nil)
; expect #t

; Test list operations
(cons 1 2)
; expect (1 . 2)

(car (cons 1 2))
; expect 1

(cdr (cons 1 2))
; expect 2
