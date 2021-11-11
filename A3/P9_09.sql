/*
Problem 1.9 Do the same as question 1.7 but this time only include trunks that have at least one 'IDLE' channel. That is, write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, office code 334 have at least one idle channel. This query should list the trunks in the order of preference. (The answer should list trunks routes 416,334 then 416,000 then 000,000 for example)
*/

select portid from trunk_routes natural join (select portid, count(portid) as count from (select portid, channel from trunks natural join channels where state = 'IDLE' and portid >= 100) group by portid) where count >= 1 and area = '416' and office = '334' UNION select portid from trunk_routes natural join (select portid, count(portid) as count from (select portid, channel from trunks natural join channels where state = 'IDLE' and portid >= 100) group by portid) where count >= 1 and area = '416' and office = '000' UNION select portid from trunk_routes natural join (select portid, count(portid) as count from (select portid, channel from trunks natural join channels where state = 'IDLE' and portid >= 100) group by portid) where count >= 1 and area = '000' and office = '000';

/* Test Output
portid
------
102
106
107
*/