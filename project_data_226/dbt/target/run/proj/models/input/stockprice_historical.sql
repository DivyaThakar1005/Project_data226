
  create or replace   view project.analytics.stockprice_historical
  
   as (
    SELECT
    * 
FROM project.data226.stockprice_historical
  );

