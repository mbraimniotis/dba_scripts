-- -----------------------------------------------------------------------------------
-- Description  : Displays information on all trace runs.
-- -----------------------------------------------------------------------------------
SET LINESIZE 200
SET TRIMOUT ON

COLUMN runid FORMAT 99999

SELECT runid,
       run_date,
       run_owner
FROM   plsql_trace_runs
ORDER BY runid;