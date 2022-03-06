;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; 树
(define TREE-SIZE 200)
(overlay/xy (overlay/xy (overlay/xy (triangle TREE-SIZE "solid" "seagreen")
                                    0 (/ TREE-SIZE 2.5)
                                    (triangle TREE-SIZE "solid" "seagreen"))
                        0 (* (/ TREE-SIZE 2.5) 2)
                        (triangle TREE-SIZE "solid" "seagreen"))
            (/ TREE-SIZE 2.5) (* (/ TREE-SIZE 2.5) 4)
            (rectangle (/ TREE-SIZE 5) (/ TREE-SIZE 2.5) "solid" "brown"))

; 船
(define BOAT-SIZE 200)
(above (overlay/xy (triangle BOAT-SIZE "solid" "red")
                   (/ (- BOAT-SIZE (/ BOAT-SIZE 20)) 2)  (/ BOAT-SIZE 10)
                   (rectangle (/ BOAT-SIZE 20) (/ BOAT-SIZE 1.1) "solid" "brown"))
       (beside (triangle/sas (/ BOAT-SIZE 4) 90 (/ BOAT-SIZE 4) "solid" "blue")
               (rectangle (* BOAT-SIZE 1.25) (/ BOAT-SIZE 4) "solid" "blue")
               (triangle/ass 90 (/ BOAT-SIZE 4) (/ BOAT-SIZE 4) "solid" "blue")))