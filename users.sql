Drop user IF EXISTS 'cliente_lectura'@'localhost';
Drop user IF EXISTS 'cliente_lect_scr'@'localhost';

 
CREATE USER 'cliente_lectura'@'localhost' IDENTIFIED BY 'cliente_lectura';
CREATE USER 'cliente_lect_scr'@'localhost' IDENTIFIED BY 'cliente_lect_scr';

 
GRANT SELECT  ON challenge.challenge TO 'cliente_lectura'@'localhost';

GRANT SELECT  ON challenge.challenge TO 'cliente_lect_scr'@'localhost';
GRANT CREATE  ON challenge.challenge TO 'cliente_lect_scr'@'localhost';

FLUSH PRIVILEGES;     