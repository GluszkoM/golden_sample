select
--CUSTOM1.GET_ALL_DEFECT_CODE(100205899), 
case 
     WHEN REGEXP_LIKE (CUSTOM1.GET_ALL_DEFECT_CODE(100205899)||',', 
           '^(((3rd_Strike)|(NTF)|(NFF)),)*$')      
        THEN 'CND'
     ELSE 'OTH'
        end as test,
case 
     WHEN REGEXP_LIKE ('NFF,3rd_Strike,NTF,4th_Strike'||',', 
--           '^(((4th_Strike)|(3rd_Strike)|(NTF)|(NFF)),)')
           '^(((4th_Strike)|(3rd_Strike)|(NTF)|(NFF)),)*$')                       
        THEN 'CND' --wylacznie kody z podanej listy pomi�dzy przecinkami 
     ELSE 'OTH'
        end as test2,
case 
     WHEN REGEXP_LIKE ('3rd_Strike,VID-DST'||',', 
           '^(((3rd_Strike)|(NTF)|(NFF)),)*$')      
        THEN 'CND'
     ELSE 'OTH'
        end as test3,    
        
case           
     WHEN REGEXP_LIKE ('BYd-vafvafvaf', 
           '^BYD','i')      --i - wy��cza casa -insensitive rozr�nianie ma�e/wielkie liery 
        THEN 'Y'
     ELSE 'N'
        end as test4,

case 
     WHEN NOT REGEXP_LIKE('REset,fsdfsd' ,'RESET','i') --prawda jezeli analiowany ciag nie zawiera ciagu RESET , 
        THEN 'Y'
        ELSE 'N'                    
        end as test5,        

        
case 
     WHEN REGEXP_LIKE ('NTF,ECO,' , 
           '^(((NTF)!(ECO)),)*$')            
        THEN 'Y'
     ELSE 'N'
end as "test2 NTFwithoutRFA/ECN"        

,case 
     WHEN REGEXP_LIKE ('NTF,ECO,' , 
           '(NTF,)!(ECO,)')            
        THEN 'Y'
     ELSE 'N'
end as "test3 NTFwithoutRFA/ECN"

,case 
     WHEN REGEXP_LIKE ('NTF2,NTF'||',', 
           '^(((NTF)),)*$')      
        THEN 'CND'
     ELSE 'OTH'
        end as only_ntf    
                           
        from dual