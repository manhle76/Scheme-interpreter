; Test Problem 5 - Quote special form

; Test quoting symbols
(quote a)
; expect a

'hello
; expect hello

; Test quoting lists
(quote (1 2 3))
; expect (1 2 3)

'(+ 1 2)
; expect (+ 1 2)

; Test nested quoted lists
'(1 (2 three (4 5)))
; expect (1 (2 three (4 5)))

; Test quote with car/cdr
(car '(a b c))
; expect a

(cdr '(a b c))
; expect (b c)

; Test quote prevents evaluation
'(+ 1 2)
; expect (+ 1 2)

(car '(+ 1 2))
; expect +

; Test eval with quote
(eval (cons 'car '('(1 2))))
; expect 1

; Test quote in definitions
(define my-list '(1 2 3))
; expect my-list

my-list
; expect (1 2 3)

(car my-list)
; expect 1
