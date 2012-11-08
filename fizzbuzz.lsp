#!/usr/local/bin/newlisp

; fizzbuzz

(define (fizzbuzz)
  (let (l (sequence 1 10000))
    (dolist (i l)
      (if
        (and (= 0 (mod i 5)) (= 0 (mod i 3))) (println {fizzbuzz})
        (= 0 (mod i 5)) (println {buzz})
        (= 0 (mod i 3)) (println {fizz})
        true (println i)))))

(fizzbuzz)

(exit)

