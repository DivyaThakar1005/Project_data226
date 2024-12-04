
    
    



with __dbt__cte__stock_price_real_time as (
SELECT
    * 
FROM project.data226.stock_price_real_time
) select date
from __dbt__cte__stock_price_real_time
where date is null


