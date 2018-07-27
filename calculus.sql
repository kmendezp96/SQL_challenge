CREATE DEFINER=`root`@`localhost` PROCEDURE `calculus`()
begin 
select ccnumber, name from challenge where ccnumber = ( select min(ccnumber) from challenge);
select ccnumber, name from challenge where ccnumber = ( select max(ccnumber) from challenge);

end