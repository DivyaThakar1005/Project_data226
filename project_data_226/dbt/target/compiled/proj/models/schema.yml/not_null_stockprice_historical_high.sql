
    
    



with __dbt__cte__stockprice_historical as (
SELECT
    * 
FROM project.data226.stockprice_historical
) select high
from __dbt__cte__stockprice_historical
where high is null


