#!/usr/local/bin/newlisp

; fizzbuzz
(context 'ecase)
(define-macro (ecase:ecase l)
  (eval (append
    (list 'case l)
    (map (fn (i) (cons (eval (i 0)) (rest i))) (args)))))
(context MAIN)

(define (fizzbuzz)
  (let (l (sequence 1 10000))
    (dolist (i l)
      (ecase i
        ((and (= 0 (mod i 5)) (= 0 (mod i 3))) (println {fizzbuzz}))
        ((= 0 (mod i 5)) (println {buzz}))
        ((= 0 (mod i 3)) (println {fizz}))
        (true (println i))))))

(fizzbuzz)

(exit)

