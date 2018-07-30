USE challenge;
drop trigger if exists trigger_challenge;
DELIMITER $$
CREATE TRIGGER trigger_challenge BEFORE UPDATE ON challenge
	FOR EACH ROW BEGIN
		declare new_trgr int;
        declare old_trgr int;
        declare seqUpdt int;
		SET new_trgr = NEW.trgr;
		SET old_trgr = OLD.trgr;
		SET seqUpdt = OLD.seq;
		if new_trgr <>old_trgr THEN
			if new_trgr%2 = 0 THEN
				SET NEW.trgr = new_trgr + 3;
			else
				SET New.trgr = new_trgr - 5;
            
            END IF;
		END IF;
	END;
	$$
DELIMITER ;


 update challenge set trgr = 7 where seq = 40;
 select seq, trgr from challenge where seq = 40; 

