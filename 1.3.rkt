#lang racket

(define (max-two-sum a b c)
  (cond ((and (> a c) (> b c)) (+ a b))
    ((and (> a b) (> c b)) (+ a c))
    ((and (> b a) (> c a)) (+ b c))))

(max-two-sum 1 2 3)
(max-two-sum 1 3 2)
(max-two-sum 2 1 3)
(max-two-sum 2 3 1)
(max-two-sum 3 1 2)
(max-two-sum 3 2 1)
