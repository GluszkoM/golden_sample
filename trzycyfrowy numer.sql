SELECT
  REGEXP_INSTR('500 Oracle Parkway, Redwood Shores, CA',
               '[s|r|p][[:alpha:]]{6}', 3, 2, 1, 'i') "REGEXP_INSTR"
  ,REGEXP_INSTR('R1A_234_ftCA',
               '[[:digit:]]{3}', 3, 2, 1, 'i') "REGEXP_INSTR2"
,REGEXP_SUBSTR('R1A_234_f0tCA','(\d)(\d)(\d)') "trzycyfrowy numer"               
  FROM DUAL;