-- #####################################################################################
-- PROCEDURE THAT ENABLES/DISABLES ALL TRIGGERS IN THE SCHEMA WHERE IS EXECUTED
-- #####################################################################################
CREATE OR REPLACE PROCEDURE ALTER_ALL_TRIGGERS(status VARCHAR2) IS
  CURSOR c_tr IS (SELECT 'ALTER TRIGGER ' || trigger_name AS stmnt FROM user_triggers);
BEGIN
  IF status NOT IN ('ENABLE', 'enable', 'DISABLE', 'disable') THEN
    DBMS_OUTPUT.PUT_LINE('ONLY ''ENABLEDISABLE'' ACCEPTED AS PARAMETERS');
    RAISE VALUE_ERROR;
  END IF;
  FOR tr IN c_tr LOOP
    EXECUTE IMMEDIATE tr.stmnt || ' ' || status;
  END LOOP;
END;