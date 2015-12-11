#lang racket

; application order，函数p会无限递归
; normal order，先展开成
(if (= 0 0) 0 (p))
; 然后得出结果
(if #t 0 (p))
0
