Drop user IF EXISTS 'cliente_lectura'@'localhost';
Drop user IF EXISTS 'cliente_lect_scr'@'localhost';
Drop user IF EXISTS 'cliente_lectura'@'%';
Drop user IF EXISTS 'cliente_lect_scr'@'%';

 
CREATE USER 'cliente_lectura'@'localhost' IDENTIFIED BY 'cliente_lectura';
CREATE USER 'cliente_lect_scr'@'localhost' IDENTIFIED BY 'cliente_lect_scr';

 
GRANT SELECT  ON challenge.challenge TO 'cliente_lectura'@'localhost';

GRANT SELECT  ON challenge.challenge TO 'cliente_lect_scr'@'localhost';
GRANT INSERT  ON challenge.challenge TO 'cliente_lect_scr'@'localhost';
GRANT CREATE  ON challenge.challenge TO 'cliente_lect_scr'@'localhost';

CREATE USER 'cliente_lectura'@'%' IDENTIFIED BY 'cliente_lectura';
CREATE USER 'cliente_lect_scr'@'%' IDENTIFIED BY 'cliente_lect_scr';

 
GRANT SELECT  ON challenge.challenge TO 'cliente_lectura'@'%';


GRANT SELECT  ON challenge.challenge TO 'cliente_lect_scr'@'%';
GRANT INSERT  ON challenge.challenge TO 'cliente_lect_scr'@'%';
GRANT CREATE  ON challenge.challenge TO 'cliente_lect_scr'@'%';

FLUSH PRIVILEGES;     