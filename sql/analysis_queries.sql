-- Workforce & Attrition Analytics: starter analytical queries
SELECT
    d.Year,
    d.MonthName,
    SUM(f.Revenue) AS Revenue,
    SUM(f.Cost) AS Cost,
    SUM(f.Revenue - f.Cost) AS GrossProfit
FROM FactPerformance f
JOIN DimDate d ON f.DateKey = d.DateKey
GROUP BY d.Year, d.MonthName, d.MonthNumber
ORDER BY d.Year, d.MonthNumber;

-- Dimension-level performance
SELECT DimensionName, SUM(Revenue) Revenue, SUM(TargetValue) TargetValue
FROM FactPerformance
GROUP BY DimensionName
ORDER BY Revenue DESC;
