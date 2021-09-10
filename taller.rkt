#lang racket
;Juan Camilo Naranjo y Jose Daniel Gil

; punto 1
(define (area x)
  (* (/ (sqrt 3) 4)x))


; punto 2

(define (factorial n)
  (if (= n 0)1
      (* n (factorial (- n 1)))))

(define (punto2 a b)
  (/ (factorial a) (* (factorial b) (factorial(- a b))))
  )

; punto 3
(define a(list 1 2 2 3 4 5))
(define copia a)

(define (esIgual? list num)
  (if (null? list)
      #f
      (if(equal? (car list) (num))
         #t
         (esIgual? (cdr list) (num)))
      )
  )

(define (guardarNoRepetidos list list2)
  (if (null? list)
      (null)
      (if(esIgual? (cdr list) (car list))
         (null)
         (set? (car list) list2))
      )
  )

;punto 4

(define (contar-hojas bst)
  (cond ((null? bst) 0)
        ((not (pair? bst)) 1)
        ((null? (and (caddr bst) (cadr bst))) 1)
        (else (+ (contar-hojas (cadr bst))
        (contar-hojas (caddr bst)))))
)

(define (contar-nodos bst)
  (cond ((null? bst) 0)
        ((not (pair? bst)) 1)
        (else (+ (contar-nodos (car bst))
        (contar-nodos (cdr bst)))))
)