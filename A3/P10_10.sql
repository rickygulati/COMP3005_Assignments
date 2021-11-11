/*
Problem 1.10 Produce a table that lists the name of all the service-subscribers that subscribe to at least all the same services as Jason Allison subscribes to but possibly others as well. Jason Allison rents the line with portID=2. (So this is the classic "subset" query.)
*/

select name from subscribers where NOT EXISTS (select service from service_subscribers where portid = 2 EXCEPT select service from service_subscribers where service_subscribers.portid = subscribers.portid);

/* Test Output
name
--------------
Jason Allison
Michael Jordan
Joe Carter
Homer Simpson
Matt Stajan
*/