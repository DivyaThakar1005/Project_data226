select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



with __dbt__cte__stockprice_historical as (
SELECT
    * 
FROM project.data226.stockprice_historical
) select volume
from __dbt__cte__stockprice_historical
where volume is null



      
    ) dbt_internal_test