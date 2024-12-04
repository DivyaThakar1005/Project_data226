
  
    

        create or replace transient table project.analytics.union_table
         as
        (SELECT 
    t1.DATE, 
    t1.OPEN AS OPEN_1, 
    t1.HIGH AS HIGH_1, 
    t1.LOW AS LOW_1, 
    t1.CLOSE AS CLOSE_1, 
    t1.VOLUME AS VOLUME_1,
    t1.LOAD_TIMESTAMP,  -- Timestamp from the first table
    t2.OPEN AS OPEN_2, 
    t2.HIGH AS HIGH_2, 
    t2.LOW AS LOW_2, 
    t2.CLOSE AS CLOSE_2, 
    t2.VOLUME AS VOLUME_2,
    t2.TIMESTAMP AS TIMESTAMP_2  -- Timestamp from the second table
FROM 
    stock_price_real_time t1
INNER JOIN 
    stockprice_historical t2
ON 
    t1.DATE = t2.DATE
ORDER BY 
    t1.DATE
        );
      
  