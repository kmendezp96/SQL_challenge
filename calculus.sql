DELIMITER //


DROP PROCEDURE IF EXISTS calculus;
CREATE PROCEDURE `calculus`()
begin 
select ccnumber, name from challenge where ccnumber = ( select min(ccnumber) from challenge);
select ccnumber, name from challenge where ccnumber = ( select max(ccnumber) from challenge);
SELECT ccnumber, COUNT( * )
FROM challenge
GROUP BY ccnumber
ORDER BY COUNT( * ) DESC
LIMIT 1;

end