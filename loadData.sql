SHOW VARIABLES LIKE "secure_file_priv";
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demofile.csv' INTO TABLE challenge.challenge FIELDS TERMINATED BY ',' lines terminated by '\r\n';