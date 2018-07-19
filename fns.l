
  (defun my_length (a) (cond ((null a) 0) (t (+ (my_length (cdr a)) 1))
)
)
 


(defun my_memq(s l) (cond ((null l) nil) ((eq (car l) s) l) (t(my_memq s  (cdr l)))))



(defun my_append (a b) (cond ((null a) b) (t (cons (car a) (my_append(cdr a) b)))))

   


(defun my_attach (s l) (cond ((null l) (cons s nil)) (t (cons (car l) (my_attach s (cdr l))))))


(defun my_assoc (a l) (cond ((null l) nil) ((eq (car (car l)) a) (car l)) (t (my_assoc a (cdr l)))))


(defun freq (s l) (cond ((null l) 0) ((listp(car l)) (+(freq s (car l)) (freq s (cdr l)))) ((eq (car l) s) (+ (freq s (cdr l)) 1 ))(t(freq s (cdr l)))))




(defun mapping (l n) (cond ((null l) nil) ((< (car (car l)) n) (my_append (cdr (car l)) (mapping (cdr l) n))) (t(mapping (cdr l) n))))


;These are functions for the last function

(defun helper_last (s l) (cond ((null l) nil) ((eq s (car l)) 1) (t (helper_last s (cdr l)))))

(defun my_last (s l) (cond ((null l) nil) ((eq s (car l)) (cond ((null (helper_last s (cdr l))) l) (t (my_last s (cdr l))))) (t (my_last s (cdr l)))))


(defun my_reverse(l) (cond((null l)nil) (t(my_append(my_reverse(cdr l)) (cons (car l) nil)))))

;These functions are for is-pattern?

(defun helper_pattern(pat str) (cond ((null pat) 1) ((eq (car str) (car pat)) (helper_pattern(cdr pat) (cdr str))) (t nil))) 


(defun is-pattern? (pat str) (cond ((null pat) nil) ((null str) nil) ((eq (car pat) (car str)) (cond ((null(helper_pattern (cdr pat) (cdr str))) (is-pattern? pat (cdr str))) (t str))) (t (is-pattern?  pat (cdr str)))))


(defun first_atom(l) (cond((null l) nil) ((atom (car l)) (car l)) ((listp(car L)) (first_atom(car l)))))
 


