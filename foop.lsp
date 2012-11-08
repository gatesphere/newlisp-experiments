#!/usr/local/bin/newlisp
;; some object orientation in newlisp

; some notes -
; to call class methods on itself, the full context name is needed
; (: won't work)
; also, when using full context names of class methods, "self" is 
; the last argument


; define the context
(new Class 'Account)

; constructor
(define (Account:Account name (value 0)) (list Account name value))

; accessors
(define (Account:name) (self 1))
(define (Account:value) (self 2))

; methods
(define (Account:credit amount) 
  (Account (Account:name self) (inc (Account:value self) amount)))
(define (Account:debit amount) 
  (Account:credit (* -1 amount) self))
(define (Account:pprint) 
  (println "Account name: " (term (Account:name self)) " value: " (Account:value self)))

;; driver
(setf acct (Account 'a 40))
(:pprint acct)
(setf acct (:credit acct 34))
(:pprint acct)
(setf acct (:debit acct 34))
(:pprint acct)

(exit)
