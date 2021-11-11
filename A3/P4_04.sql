/*
Problem 1.4 Find the names and address of all subscribers who subscribe to all of the available services. (Note the result for the current data might be empty but your query should work if the TA's add more data to the databse.)
*/

select service from (select service, MAX(count) from (select service, count(portid) as count from service_subscribers group by service) natural join services);

/* Test output
service
-------

*/