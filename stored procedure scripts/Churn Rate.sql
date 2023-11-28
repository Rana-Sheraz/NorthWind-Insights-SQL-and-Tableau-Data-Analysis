with info_order AS (
    SELECT *,
          YEAR(OrderDate) AS _year,
          MONTH(OrderDate) AS _month,
          DATE_FORMAT(OrderDate, "%Y%m") AS month_year,
           LAG(DATE_FORMAT(OrderDate, "%Y%m"), 1) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS previous_order_month
    FROM orders
),
info_month AS (
    SELECT #OrderDate,
			month_year,
           _year,
           _month,
           COUNT(DISTINCT CustomerID) AS total_customer,
           COUNT(DISTINCT CASE WHEN PERIOD_DIFF(month_year, previous_order_month) = 1 THEN CustomerID END) AS retain_customers,
           LAG(COUNT(DISTINCT CustomerID), 1) OVER (ORDER BY month_year) AS prev_month_total_customer
    FROM info_order
    GROUP BY month_year, _year, _month#,OrderDate
)
SELECT #OrderDate,
		#month_year,
        concat(_year,'-',_month) year_months, 
       _year,
       _month,
       (retain_customers * 100) / prev_month_total_customer AS retention_rate,
       100 - ((retain_customers * 100) / prev_month_total_customer) AS churn_rate
FROM info_month
