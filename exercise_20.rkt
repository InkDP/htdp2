;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (string-delete str i)
  (if (and (string? str) (number? i))
      (if (> (string-length str) 0)
          (if (and (>= i 0) (< i (string-length str)))
              (string-append (substring str 0 i) (substring str (+ i 1)))
              "位置错误!"
          )
          "字符串为空!"
          )
      "类型错误!"
      )
  )


(string-delete "" 0)
(string-delete 0 "abc")
(string-delete "abcd" -1)
(string-delete "abcd" 4)
(string-delete "abcd" 1)
(string-delete "abcd" 2)