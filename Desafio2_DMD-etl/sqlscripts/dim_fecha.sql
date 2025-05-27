SELECT 
  DISTINCT 
  mobility_date,
  YEAR(mobility_date) AS year_data,
  MONTH(mobility_date) AS month_data,
  DAY(mobility_date) AS day_data,
  DATENAME(MONTH, mobility_date) AS month_name,
  DATENAME(WEEKDAY, mobility_date) AS day_month,
  CONVERT(CHAR(8), mobility_date, 112) AS id_date
FROM hechos
WHERE mobility_date IS NOT NULL
