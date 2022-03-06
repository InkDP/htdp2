;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define NUMBER 120)
(define PRICE 5.0)
(define CHANGEPRICE 0.1)
(define CHANGENUMBER 15)
(define COST 1.5)

(define PRICESENSITIVITY
  (/ CHANGENUMBER CHANGEPRICE))

(define (attendees ticket-price)
  (- NUMBER (* (- ticket-price PRICE) PRICESENSITIVITY)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (const ticket-price)
  (* COST (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (const ticket-price)))

(profit 3)