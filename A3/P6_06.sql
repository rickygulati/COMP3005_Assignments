/*
Problem 1.6 Produce a table that lists the most popular service (or services). That is, give the name of the service that has the most subscribers.
*/

select service from (select service, MAX(count) from (select service, count from (select service as s, count(portid) as count from service_subscribers group by service) join services on s = scode));

/* Test Output
service
--------------
Message Answer
*/