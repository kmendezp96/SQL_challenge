-- DROP INDEX indice_seq on challenge;
-- DROP INDEX indice_last on challenge;
-- DROP INDEX indice_name on challenge;
-- DROP INDEX indice_ages on challenge;

 CREATE INDEX indice_last using BTree on challenge(last);
 CREATE INDEX indice_name using BTree on challenge(name);
 CREATE INDEX indice_ages using HASH on challenge(age);
 CREATE INDEX indice_ccnumber using BTree on challenge(ccnumber);
 CREATE INDEX indice_yn using HASH on challenge(yn);
 
DROP VIEW if exists seq_trgr;
DROP VIEW if exists seq_name;
DROP VIEW if exists dist_yn_age;

create view seq_trgr as (select seq, trgr from challenge);
create view seq_name as (select seq, name from challenge);
create view dist_yn_age as (select distinct yn, age from challenge);