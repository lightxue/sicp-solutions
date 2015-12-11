#lang racket

; 非常大，square guess很大，会超过整数的精度范围
; 非常小，尤其要求的结果比0.001还小，精度0.001不够用

(define (sqrt-iter last-guess guess x)
  (if (good-enough? last-guess guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; 这个地方是(* guess 0.001)是要根据自身的变化来找最找最优而不是造固定值来确定
(define (good-enough? last-guess guess)
  (<= (abs (- last-guess guess))
          (* guess 0.001)))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(sqrt 100)
(sqrt 0)

