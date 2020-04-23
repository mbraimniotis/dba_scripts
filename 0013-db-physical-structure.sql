-- Identify the physical structures of the database:

select name, bytes from v$datafile;
select name, bytes from v$tempfile;
select member from v$logfile;
select * from v$controlfile;