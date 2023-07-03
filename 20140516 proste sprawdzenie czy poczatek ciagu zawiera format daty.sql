select
case 
     WHEN REGEXP_LIKE ('2015-03-25', '\d{4}-\d{2}-\d{2}') --sprawdza date w formacie YYYY-MM-DD            
        THEN 'Y'
     ELSE 'N'
end as "is_date"        
from dual

select
case 
     WHEN REGEXP_LIKE ('111:03:25', '\d{2}:\d{2}:\d{2}') and LENGTH  ('11:03:25') < 9--sprawdza godizne w formacie hh:mi:ss            
        THEN 'Y'
     ELSE 'N'
end as "is_date"        
from dual

select
case 
     WHEN REGEXP_LIKE ('11-03-2023', '\d{2}-\d{2}-\d{4}')            
        THEN 'Y'
     ELSE 'N'
end as "is_date"        
from dual

select
case 
     WHEN REGEXP_LIKE ('25/06/2016 15:30:22', '\d{2}\/\d{2}\/\d{4}\ \d{2}\:\d{2}\:\d{2}') --sprawdza date w formacie dd/mm/yyyy hh24:mi:ss            
        THEN 'Y'
     ELSE 'N'
end 
as "is_date"        
from dual


select
case 
     WHEN REGEXP_LIKE ('25/06/2016 15:30:22', '\d{2}\/\d{2}\/\d{4}\ \d{2}\:\d{2}\:\d{2}') --sprawdza date w formacie dd/mm/yyyy hh24:mi:ss            
        THEN to_date ('25/06/2016 15:30:22','dd/mm/yyyy hh24:mi:ss') 
     ELSE null
end as "is_date"        
from dual
--,'dd/mm/yyyy hh24:mi:ss'
--from dual