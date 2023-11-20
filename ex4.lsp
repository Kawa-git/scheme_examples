(define (avg xs)
(/ (foldl + 0 xs) (length xs)))

(define (sum xs) (foldl + 0 xs))

(define (first-element xs)
(map (lambda (x) (car x)) xs))

(define (second-element xs)
(map (lambda (x) (cdr x)) xs))

(define (ex4 xs)
(list (sum (first-element xs)) (avg (second-element xs))))

(ex4 (list (cons 1 2) (cons 3 4) (cons 5 6)))