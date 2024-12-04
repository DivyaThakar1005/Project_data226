
  create or replace   view project.analytics.stock_price_real_time
  
   as (
    SELECT
    * 
FROM project.data226.stock_price_real_time
  );

