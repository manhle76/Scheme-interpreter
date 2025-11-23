; Test Problem 11 - Dynamic scoping with mu

; Test 1: Basic mu example from spec
(define f (mu () (* a b)))
; expect f

(define g (lambda () (define a 4) (define b 5) (f)))
; expect g

(g)
; expect 20

; Test 2: Compare lambda vs mu scoping
(define x 10)
; expect x

(define lambda-proc (lambda () x))
; expect lambda-proc

(define mu-proc (mu () x))
; expect mu-proc

; Lambda uses lexical scope (x=10 from global)
(lambda-proc)
; expect 10

; Mu also sees x=10 from global when called from global
(mu-proc)
; expect 10

; Test 3: Mu accesses local variables
(define (test-mu)
  (define x 99)
  (mu-proc))
; expect test-mu

; Mu uses dynamic scope (x=99 from test-mu's frame)
(test-mu)
; expect 99

; Lambda still uses lexical scope (x=10 from global)
(define (test-lambda)
  (define x 99)
  (lambda-proc))
; expect test-lambda

(test-lambda)
; expect 10

; Test 4: Mu with parameters
(define (make-mu-adder)
  (mu (y) (+ x y)))
; expect make-mu-adder

(define mu-add (make-mu-adder))
; expect mu-add

(define (call-with-x val)
  (define x 100)
  (mu-add val))
; expect call-with-x

(call-with-x 5)
; expect 105

; Test 5: Nested mu calls
(define h (mu () (+ y 1)))
; expect h

(define (call-h)
  (define y 50)
  (h))
; expect call-h

(call-h)
; expect 51
