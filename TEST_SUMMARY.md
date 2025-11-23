# Scheme Interpreter Test Files - Problems 1-11

## How to Run Tests

Run individual problem tests:

```bash
python3 scheme.py test_problem1.scm
python3 scheme.py test_problem2.scm
# ... and so on
```

Run all tests at once:

```bash
for i in {1..11}; do
  echo "=== Testing Problem $i ==="
  python3 scheme.py test_problem$i.scm
  echo ""
done
```

---

## Test File Overview

### **Part 1: The Evaluator (Problems 1-5)**

| File                | Problem   | Feature Tested                                                 |
| ------------------- | --------- | -------------------------------------------------------------- |
| `test_problem1.scm` | Problem 1 | Frame.define and Frame.lookup - Looking up built-in procedures |
| `test_problem2.scm` | Problem 2 | Calling built-in procedures (arithmetic, predicates, lists)    |
| `test_problem3.scm` | Problem 3 | Evaluating call expressions (nested, operator evaluation)      |
| `test_problem4.scm` | Problem 4 | Symbol definition with `(define x value)`                      |
| `test_problem5.scm` | Problem 5 | Quote special form `'expr` and `(quote expr)`                  |

### **Part 2: Procedures (Problems 6-11)**

| File                 | Problem    | Feature Tested                                   |
| -------------------- | ---------- | ------------------------------------------------ |
| `test_problem6.scm`  | Problem 6  | `eval_all` and `begin` special form              |
| `test_problem7.scm`  | Problem 7  | Creating lambda procedures with `do_lambda_form` |
| `test_problem8.scm`  | Problem 8  | Frame.make_child_frame - Parameter binding       |
| `test_problem9.scm`  | Problem 9  | Calling lambda procedures (lexical scoping)      |
| `test_problem10.scm` | Problem 10 | Named procedure shorthand `(define (f x) ...)`   |
| `test_problem11.scm` | Problem 11 | Mu procedures with dynamic scoping               |

---

## Test Coverage

### Problem 1 Tests:

- Looking up built-in procedure names (+, -, \*, odd?, cons)

### Problem 2 Tests:

- Arithmetic operations with multiple operands
- Comparison operators
- Predicates (odd?, even?, null?)
- List operations (cons, car, cdr)

### Problem 3 Tests:

- Nested arithmetic expressions
- Multiple operands
- Operator evaluation with conditionals

### Problem 4 Tests:

- Basic variable definition
- Definition with expressions
- Variable usage
- Redefinition
- Operator evaluation count check

### Problem 5 Tests:

- Quoting symbols
- Quoting lists
- Quote shorthand '
- Quote with car/cdr
- Quote in definitions

### Problem 6 Tests:

- Begin returns last value
- Begin with side effects (print)
- Begin in definitions
- Single expression begin
- Begin with local definitions

### Problem 7 Tests:

- Basic lambda creation
- Lambda with multiple parameters
- Lambda with no parameters
- Multi-expression body
- Nested lambda

### Problem 8 Tests:

- Single parameter binding
- Multiple parameter binding
- No parameter case
- Parameter binding correctness

### Problem 9 Tests:

- Basic lambda calls
- Multi-parameter lambda
- Multi-expression body
- Nested calls
- Lexical scoping
- Higher-order functions
- Closures

### Problem 10 Tests:

- Simple named procedures
- Multi-parameter procedures
- Multi-expression body
- Zero parameters
- Nested procedure calls
- Recursive functions
- Complex functions with begin

### Problem 11 Tests:

- Basic mu from spec
- Lambda vs mu comparison
- Dynamic variable access
- Mu with parameters
- Nested mu calls

---

## Expected Results

All test files should run without errors and produce the expected output indicated by `; expect` comments.

If a test fails, check:

1. The problem implementation is complete
2. Previous problems are working (later problems depend on earlier ones)
3. The error message for debugging hints
