-- DROP INDEX indice_seq on challenge;
-- DROP INDEX indice_last on challenge;
CREATE UNIQUE INDEX indice_seq using BTree on challenge(seq);
CREATE INDEX indice_last using BTree on challenge(last);
CREATE INDEX indice_name using BTree on challenge(name);
 
 create view seq_trgr as (select seq, trgr from challenge);
 create view seq_name as (select seq, name from challenge);
