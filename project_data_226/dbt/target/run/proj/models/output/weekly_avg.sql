
  
    

        create or replace transient table project.analytics.weekly_avg
         as
        (-- Select an active warehouse

-- Your query
SELECT 
    DATE_TRUNC('WEEK', DATE) AS WEEK_START,
    AVG(CLOSE) AS AVG_CLOSE_PRICE,
    SUM(VOLUME) AS TOTAL_VOLUME
FROM PROJECT.DATA226.stock_price_real_time
GROUP BY DATE_TRUNC('WEEK', DATE)
ORDER BY WEEK_START
        );
      
  