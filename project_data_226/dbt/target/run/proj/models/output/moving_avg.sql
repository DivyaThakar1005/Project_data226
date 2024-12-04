
  
    

        create or replace transient table project.analytics.moving_avg
         as
        (SELECT 
    DATE,
    CLOSE,
    AVG(CLOSE) OVER (ORDER BY DATE ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS MA_7,
    AVG(CLOSE) OVER (ORDER BY DATE ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS MA_30
FROM project.data226.stock_price_real_time
ORDER BY DATE
        );
      
  