;; Alex Miller
;; 4/8

(ns search)

(defn searcher [aList val index]
    (if (list? aList)
        (let [firstVal (first aList)]
            (if (= firstVal val)
                index
                (searcher (rest aList) val (+ index 1))
            )
        )
        (+ -1 0)
    )
)

(defn search [aList val]
    (if (list? aList)
        (searcher aList val 0)
        (+ -1 0)
    )
    
)

(defn -main []
    (let
        [ 
        list1 '(99 88 77 66 55)        ; max is first value
        list2 (list 55 66 77 88 99)    ; max is last value
        list3 (list 55 77 99 88 66)    ; max is middle value
        emptyList '()                  ; list is empty
    ]

    (println)
    (println "list1: " list1)        ; print list1,
    (println "list2: " list2)        ;   list2,
    (println "list3: " list3)        ;   list3,
    (println "empty: " emptyList)    ;   list3,
    (println)                        ;   and their maxima

    (println (search list1 99))
    (println (search list2 99))
    (println (search list3 99))
    (println (search emptyList 99))
    )
)