SELECT 
    DATE,
    CLOSE,
    AVG(CLOSE) OVER (ORDER BY DATE ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS MA_7,
    AVG(CLOSE) OVER (ORDER BY DATE ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS MA_30
FROM project.data226.stockprice_historical
ORDER BY DATE