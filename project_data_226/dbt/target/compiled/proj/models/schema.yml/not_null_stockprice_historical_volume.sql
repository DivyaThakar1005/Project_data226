
    
    



with __dbt__cte__stockprice_historical as (
SELECT
    * 
FROM project.data226.stockprice_historical
) select volume
from __dbt__cte__stockprice_historical
where volume is null


