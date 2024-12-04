
    
    



with __dbt__cte__stock_price_real_time as (
SELECT
    * 
FROM project.data226.stock_price_real_time
) select open
from __dbt__cte__stock_price_real_time
where open is null


