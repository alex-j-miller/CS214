;;;; rect_area.clj calculates the area of a rect.
;;;;
;;;; Input: The radius of a rect.
;;;; Output: The area of that rect.
;;;;
;;;; Usage: clojure -m rect_area
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by:
;;;; Date:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rect_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectArea() computes the area of a rect.
;;; Receive: itsLength, itsHeight, a number.
;;; Precondition: itsLength, itsHeight >= 0.0.
;;; Return: the area of the corresponding rect.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn rectArea [itsLength itsHeight]
  (* itsLength itsHeight 1.0)  
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the height and length of a rect.
;;; Output: the area of that rect.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rect,")
  (print   " enter its height: ") (flush)
  (let
    [ height (read) ]
    (assert (>= height 0) "-main: height must be positive")

    (print   " enter its length: ") (flush)
    (let
     [ length (read) ]


     (assert (>= length 0) "-main: length must be positive")
     (printf "\nThe area is %f\n\n" (rectArea length height))

     (print "\nThe area is ")
     (print (rectArea length height))
     (print "\n\n")

    (printf "\nThe area is %.15f\n\n" (rectArea length height))
    )
  )
)