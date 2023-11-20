; max defined using foldl (or foldr)
(define (max1 xs)
    (if (null? xs) #f (foldl (lambda (x y) (if (> x y) x y)) (car xs) (cdr xs))))
  
; max defined using apply
(define (max2 xs) (apply max xs))

(define (ex5 xs)
    (list (length xs) (max2 xs)))

(ex5 '(1 3 54 7 2 8 65))
; output: (7 65)