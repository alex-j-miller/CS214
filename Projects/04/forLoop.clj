(ns forLoop)

(defn factorial [n]
  (if (zero? n)
    1
    (* n (factorial (dec n)))))

(defn -main []
  (println "\nTo compute n!, enter n:")
  (let [n (read)]
    (println (str n "! = " (factorial n)))))