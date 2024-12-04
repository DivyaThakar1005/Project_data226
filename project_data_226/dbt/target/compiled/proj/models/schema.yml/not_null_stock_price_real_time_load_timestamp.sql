
    
    



with __dbt__cte__stock_price_real_time as (
SELECT
    * 
FROM project.data226.stock_price_real_time
) select load_timestamp
from __dbt__cte__stock_price_real_time
where load_timestamp is null


