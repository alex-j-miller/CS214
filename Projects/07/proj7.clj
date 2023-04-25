(ns proj7)

(defn print-array [arr]
  (doseq [elem arr]
    (println elem)))

(defn read-array [size]
  (vec (repeatedly size #(let [line (read-line)]
                            (Double/parseDouble (.trim line))))))

(println "How many values are in the array?")
(let [num-values (Integer/parseInt (read-line))
      arr (read-array num-values)]
  (println "The array values are:")
  (print-array arr))