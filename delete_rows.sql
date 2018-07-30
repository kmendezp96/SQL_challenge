SELECT COUNT(*) FROM challenge.challenge;
DELETE FROM challenge.challenge WHERE seq > 900000;
SELECT COUNT(*) FROM challenge.challenge;