#lang racket

(define (cube-root-iter last-guess guess x)
  (if (good-enough? last-guess guess)
      guess
      (cube-root-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? last-guess guess)
  (<= (abs (- last-guess guess))
          (* guess 0.001)))

(define (cube-root x)
  (cube-root-iter 0 1.0 x))

(cube-root 27)
(cube-root 0)

