;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(define in "呀哈哈哈哈或")

(if (and (number? in) (negative? in))
    (* in -1)
    (if (string? in)
        (string-length in)
        (if (image? in)
            (* (image-width in) (image-height in))
            (if (and (number? in) (> in 0))
                (- in 1)
                (if (and (boolean? in) in)
                    10
                    20
                    )
                )
            )
        )
    )