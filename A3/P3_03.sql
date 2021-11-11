/*
Problem 1.3 List the names of all the subscribers who are originators of a call to someone who is also a subscriber on the same switch (i.e. a line to line call)
*/

select distinct name from (select * from subscribers natural join lines) join calls on (areacode = area and portid = orig);

/* Test Output 
name
--------------
Ed Belfour
Homer Simpson
Jason Allison
Mats Sundin
Michael Jordan
*/

