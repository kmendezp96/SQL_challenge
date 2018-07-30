USE challenge;

DELIMITER //

DROP PROCEDURE IF EXISTS calculus;
CREATE PROCEDURE `calculus`()
begin 

declare half_rows int default 0;
set half_rows = (select count(*) from challenge)/2;




SELECT MIN(ccnumber) AS Minimum, MAX(ccnumber) AS Maximum, avg(ccnumber) AS Average FROM challenge;
SELECT ccnumber FROM challenge GROUP BY ccnumber ORDER BY COUNT( * ) DESC LIMIT 1;
select ccnumber from challenge  order by ccnumber asc limit half_rows,1;

end
