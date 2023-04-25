(ns proj05)

(defn my-reverse [lst]
  (if (empty? lst)
    '()
    (concat (my-reverse (rest lst)) (list (first lst)))))

(defn super-reverse [lst]
  (cond
    (empty? lst) lst
    (list? (first lst)) (concat (super-reverse (rest lst)) [(super-reverse (first lst))])
    :else (concat (super-reverse (rest lst)) [(first lst)])))

(defn member? [x lst]
  (if (empty? lst)
    false
    (or (= x (first lst))
        (member? x (rest lst)))))

(defn subsequence [lst i n]
  (cond
    (or (empty? lst) (< i 0) (<= (count lst) i))
    nil
    (zero? n)
    '()
    :else
    (if (= 0 i)
      (cons (first lst) (subsequence (rest lst) i (dec n)))
      (subsequence (rest lst) (dec i) n))))

(defn -main []

    (println (my-reverse '(a b (c d) (e (f g)))))
    (println (super-reverse '(a b (c d) (e (f g)))))

    (println (member? '(1 2) '((1 2) 3 (4 (5 6)))))
    (println (member? 3 '((1 2) 3 (4 (5 6)))))
    (println (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))))

    (println (member? 1 '((1 2) 3 (4 (5 6)))))
    (println (member? 2 '((1 2) 3 (4 (5 6)))))
    (println (member? 4 '((1 2) 3 (4 (5 6)))))  

    (println (subsequence '(1 2 (3 4) (5 (6 7))) 1 2))  
    (println (subsequence '(1 2 3 4 5 6 7) 2 4))  

)