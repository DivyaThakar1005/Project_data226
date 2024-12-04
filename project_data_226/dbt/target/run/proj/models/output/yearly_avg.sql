
  
    

        create or replace transient table project.analytics.yearly_avg
         as
        (SELECT 
    DATE_TRUNC('YEAR', DATE) AS YEAR_START,
    AVG(CLOSE) AS AVG_CLOSE_PRICE,
    SUM(VOLUME) AS TOTAL_VOLUME
FROM project.data226.stock_price_real_time
GROUP BY DATE_TRUNC('YEAR', DATE)
ORDER BY YEAR_START
        );
      
  