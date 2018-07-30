show tables;
SHOW COLUMNS FROM challenge.challenge;
SHOW COLUMNS FROM challenge.logo;
SHOW COLUMNS FROM challenge.seq_trgr;
SHOW COLUMNS FROM challenge.seq_name;

select table1.yn, table2.yn, table1.age from challenge as table1 cross JOIN  dist_yn_age as table2 where ((table1.age = table2.age) and (table1.yn <> table2.yn)); 
select table1.yn, table2.yn, table1.age, COUNT(table1.age) from challenge as table1 CROSS JOIN dist_yn_age as table2 where (table1.age = table2.age) and (table1.yn <> table2.yn) GROUP BY table1.age;