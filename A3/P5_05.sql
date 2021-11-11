/*
Problem 1.5 Find the names of all the subscribers who subscribe to at least three services.
*/

select name from (select portid, count(portid) from service_subscribers group by portid having count(portid) > 2) natural join subscribers;

/* Test Output
name
--------------
Michael Jordan
Joe Carter
Homer Simpson
Vince Carter
Chris Pronger
Frank Thomas
Steve Sampras
Matt Stajan
*/