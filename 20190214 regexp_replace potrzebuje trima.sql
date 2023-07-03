select 

length (trim (REGEXP_REPLACE (' 20TQC100MYF ',
                                          '[^(-a-zA-Z0-9)|(.|:|_)]')))
                             AS ordered_pn from dual