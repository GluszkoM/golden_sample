select 1 from dual where
1=1
        and not REGEXP_LIKE (I.SERIAL_NO, '^FLX') -- remove Flextronic items based on the serial number first 3 characters
        and not REGEXP_LIKE (P.PART_NO, '^HPM1') -- remove Flextronic items based on the serial number first 3 characters        
        and not REGEXP_LIKE (P.PART_NO, '^F') -- remove Flextronic items based on the serial number first 3 characters