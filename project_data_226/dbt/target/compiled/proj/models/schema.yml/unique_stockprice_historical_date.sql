
    
    

with __dbt__cte__stockprice_historical as (
SELECT
    * 
FROM project.data226.stockprice_historical
) select
    date as unique_field,
    count(*) as n_records

from __dbt__cte__stockprice_historical
where date is not null
group by date
having count(*) > 1


