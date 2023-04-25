/*
Alex Miller
4/8
*/

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class search {
    public static void main(String[] args) {
        LinkedList<Integer> list1 = new LinkedList<Integer>(),
							list2 = new LinkedList<Integer>(),
							list3 = new LinkedList<Integer>(),
                            list4 = new LinkedList<Integer>();
		
		list1.add(99);    // 99, 88, 77, 66, 55
		list1.add(88);    // max is first
		list1.add(77);
		list1.add(66);  
		list1.add(55);

		list2.add(55);    // 55, 66, 77, 88, 99
		list2.add(66);    // max is last
		list2.add(77);  
		list2.add(88);  
		list2.add(99);  

		list3.add(55);    // 55, 77, 99, 88, 66
		list3.add(77);    // max is in the middle
		list3.add(99);  
		list3.add(88);  
		list3.add(66);

		list4.add(88);
		list4.add(77);
		list4.add(66);
		list4.add(55);

         

	    print(list1); 
	    print(list2); 
	    print(list3);
        print(list4);

		System.out.println("Find 99 in list1: " + searcher(list1, 99));
		System.out.println("Find 99 in list2: " + searcher(list2, 99));
		System.out.println("Find 99 in list3: " + searcher(list3, 99));
        System.out.println("Find 99 in list4: " + searcher(list4, 99));
    }

    public static Integer searcher(LinkedList<Integer> aList, int val) {
        for (int i = 0; i < aList.size(); i++) {
            if (aList.get(i) == val) {
                return i;
            }
        }
        return -1; // -1 if it finds nothing
    }

    public static void print (LinkedList<Integer> aList)
    {
        Iterator<Integer> listIterator = aList.iterator();
	    while (listIterator.hasNext())	{
		    System.out.print(listIterator.next() + " ");
	    }
	    System.out.print('\n');
    }
}