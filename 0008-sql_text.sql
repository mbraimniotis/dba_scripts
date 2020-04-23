-- -----------------------------------------------------------------------------------
-- Description  : Displays the SQL statement held at the specified address.
-- -----------------------------------------------------------------------------------
SET LINESIZE 500
SET PAGESIZE 1000
SET FEEDBACK OFF
SET VERIFY OFF

SELECT a.sql_text
FROM   v$sqltext_with_newlines a
WHERE  a.address = UPPER('&&1')
ORDER BY a.piece;

PROMPT
SET PAGESIZE 14
SET FEEDBACK ON
