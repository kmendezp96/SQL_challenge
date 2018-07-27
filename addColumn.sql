 ALTER TABLE challenge.challenge ADD trgr bigint;
 update challenge set trgr = seq + 100;
 select seq, trgr from challenge;