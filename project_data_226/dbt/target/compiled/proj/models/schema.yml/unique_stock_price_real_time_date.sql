
    
    

with __dbt__cte__stock_price_real_time as (
SELECT
    * 
FROM project.data226.stock_price_real_time
) select
    date as unique_field,
    count(*) as n_records

from __dbt__cte__stock_price_real_time
where date is not null
group by date
having count(*) > 1


