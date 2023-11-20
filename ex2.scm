; function to select all the values  
; in first position from a tuple list
(define select-first (lambda (l) 
    (map (lambda (e) (car e)) l)))

; function to select all the values  
; in second position from a tuple list
(define select-second (lambda (l)
    (map (lambda (e) (cadr e)) l)))

; solution
(define ex2 (lambda (l) 
    (list (select-first l) (select-second l))))

; input: ((1 0) (2 5) (3 7))
(ex2 (list (list 1 0) (list 2 5) (list 3 7)))
; output: ((1 2 3) (0 5 7))








