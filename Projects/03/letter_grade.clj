(ns letter_grade)

(defn letterGrade [grade]
  (cond
    (= grade 10) "A"
    (= grade 9) "A"
    (= grade 8) "B"
    (= grade 7) "C"
    (= grade 6) "D"
    :else "F"
  )
)

(defn -main []
  (let
    [ grade (read) ]
    (println (letterGrade grade))
  )
)