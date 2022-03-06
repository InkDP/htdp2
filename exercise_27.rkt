;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define number 120)
(define price 5.0)
(define changePrice 0.1)
(define changeNumber 15)
(define cost 180)
(define changeConst 0.04)

(define (attendess ticket-price)
  (- number (* (- ticket-price price) (/ changeNumber changePrice))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (const ticket-price)
  (+ cost (* changeConst (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (const ticket-price)))