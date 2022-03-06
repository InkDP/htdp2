;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_14) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (string-last s)
  (if (> (string-length s) 0)
      (substring s (- (string-length s) 1) (string-length s))
      "null"
      )
  )

(string-last "")
(string-last "abcdefg")