DELIMITER //


DROP PROCEDURE IF EXISTS calculus;
CREATE PROCEDURE `calculus`()
begin 

declare total_rows int default 0;
set total_rows = (select count(*) from challenge)/2;




select ccnumber, name from challenge where ccnumber = ( select min(ccnumber) from challenge);
select ccnumber, name from challenge where ccnumber = ( select max(ccnumber) from challenge);
SELECT ccnumber, COUNT( * ) FROM challenge GROUP BY ccnumber ORDER BY COUNT( * ) DESC LIMIT 1;
select avg(ccnumber) from challenge;

select ccnumber from challenge  order by ccnumber asc limit total_rows,1;

end