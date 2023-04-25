(ns quad)
(defn quadratic-roots [a b c]
  (if (not= a 0)
    (let [arg (- (* b b) (* 4 a c))]
      (if (>= arg 0)
        [(/ (+ (- b) (Math/sqrt arg)) (* 2 a))
         (/ (- (- b) (Math/sqrt arg)) (* 2 a))]
        (do
          (println "\n*** quadratic-roots: b^2 - 4ac is negative!")
          [0 0])))
    (do
      (println "\n*** quadratic-roots: a is zero!")
      [0 0])))

(let [a (read-line )
      b (read-line )
      c (read-line )]
  (let [roots (quadratic-roots (Double/parseDouble a)
                               (Double/parseDouble b)
                               (Double/parseDouble c))]
    (if (not= roots [0 0])
      (do
        (println "Root 1:" (first roots))
        (println "Root 2:" (second roots)))
      (println "Invalid roots."))))