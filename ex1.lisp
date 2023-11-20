; Del element E in list L
(define delEl (lambda (L E)
    (cond 
        ((null-list? L ) L)
        ((eq? E (car L)) (cdr L))
        (#t (cons (car L) (delEl (cdr L) E))))))

; Find the minimum value inside L
(define min (lambda (l)
    (cond 
        ((null-list? (cdr l)) (car l))
        ((< (car l) (min(cdr l))) (car l))
        (#t (min (cdr l)))))) 

; sort
(define sort (lambda (l)
    (cond 
        ((null-list? l) l)
        (#t (cons (min l) (sort (delEl l (min l))))))))

(sort '(3 4 6 2 5 0 1))

; merge lists together
(define merge (lambda (l1 l2)
    (cond 
        ((null-list? l2) l1)
        ((cons (car l2) (merge l1 (cdr l2)))))))

(merge '(1 2 3 4) '(5 6 7 8))

; merge two lists and then sort them
(define sort-merge (lambda (l1 l2)
    (sort (merge l1 l2))))

(sort-merge '(1 4 5 3 2) '(6 10 8 7 9))