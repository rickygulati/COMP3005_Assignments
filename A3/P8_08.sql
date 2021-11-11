/*
Problem 1.8 Write an SQL query that would find if the line with phone number (613) 712-0024 is currently available to take a call because its channel is IDLE. Rev 1: That is, select the portid, directory number, and channel state of line (613) 712-0024.
*/

select portid, areacode || '-' || officecode || '-' || stationcode as phoneNumber, state from lines natural join channels where areacode = '613' and officecode = '712' and stationcode = '0024';

/* Test Output
portid  phoneNumber   state
------  ------------  -----
24      613-712-0024  BUSY
*/