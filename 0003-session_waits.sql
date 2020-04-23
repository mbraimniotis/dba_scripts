-- -----------------------------------------------------------------------------------
-- Description  : Displays information on all database session waits.
-- -----------------------------------------------------------------------------------
SET LINESIZE 200
SET PAGESIZE 1000

COLUMN username FORMAT A20
COLUMN event FORMAT A30

SELECT NVL(s.username, '(oracle)') AS username,
       s.sid,
       s.serial#,
       sw.event,
       sw.wait_time,
       sw.seconds_in_wait,
       sw.state
FROM   gv$session_wait sw,
       gv$session s
WHERE  s.sid = sw.sid
ORDER BY sw.seconds_in_wait DESC;
