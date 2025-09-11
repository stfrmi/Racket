#lang racket

(define epsilon 0.001)

;считает квадрат числа;
(define (square x) (* x x))

;достаточно ли близки два числа x и y по модулю разницы, с учетом заданной точности epsilon;
(define (close-enough? x y) (< (abs (- x y)) epsilon))

;возвращает среднее значение x и y;
(define (average x y) (/ (+ x y) 2))

(define (improve y x) (/ (+ y (/ x y)) 2))

;основной рекурсивный цикл вычисления, начиная с приближения y;
(define (sqrt-loop y x) (if (close-enough? (square y) x) y (sqrt-loop (improve y x) x)))

(define (sqrt x) (sqrt-loop 1.0 x))

;пример;
(displayln (sqrt 5))




