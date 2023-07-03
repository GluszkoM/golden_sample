select
                         REGEXP_SUBSTR ('16E-Scratched cover plastic', '[^-]+') "FaultCode", --ciag pzed myslnikiem
                         SUBSTR ('16E-Scratched cover plastic',
                                 REGEXP_INSTR ('16E-Scratched cover plastic',
                                               '[^-]+',
                                               1,
                                               2))
                            "FaultFound"                                        --ciag po myslniku
                            ,REGEXP_INSTR ('16E-Scratched cover plastic',
                                               '[^-]+',
                                               1,
                                               2) test1,                        --okreslenie miejsca ciagu pierwszego po myslniku
                         SUBSTR ('16E-Scratched cover plastic',
                                 5)
                            "FaultFound2"
                            from dual

