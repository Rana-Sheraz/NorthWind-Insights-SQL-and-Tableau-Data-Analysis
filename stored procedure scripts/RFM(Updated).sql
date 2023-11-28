DELIMITER $$
Create procedure RFM()
BEGIN
WITH RecentOrders AS (
    SELECT
		o.CustomerID,
        MAX(o.OrderDate) AS MostRecentOrderDate,
        COUNT(distinct o.OrderID) AS OrderFrequency,
        NTILE(5) over(order by COUNT(distinct o.OrderID)) F_Score,
        SUM(od.UnitPrice * od.Quantity)/ count(distinct od.orderid) AS TotalAmountSpent,
        NTILE(5) over(order by SUM(od.UnitPrice * od.Quantity)/ count(distinct od.orderid)) M_Score
    FROM
        Orders o
	LEFT JOIN
    `Order Details` od ON o.OrderID = od.OrderID
    GROUP BY
        o.CustomerID
),

rfm as (select
    c.CompanyName AS CustomerName,
    r.MostRecentOrderDate,
    DATEDIFF(MAX(r.MostRecentOrderDate) over(), r.MostRecentOrderDate) AS DaysBetweenLastOrders,
    r.F_Score,
    r.OrderFrequency,
    r.M_Score,
    r.TotalAmountSpent
FROM 
	RecentOrders r
LEFT JOIN
    customers c ON c.CustomerID = r.CustomerID
)

SELECT 
	CustomerName,
    DaysBetweenLastOrders,
    ntile(5) over(order by DaysBetweenLastOrders desc) R_Score,
    OrderFrequency,
    F_Score,
    TotalAmountSpent,
    M_Score,
    concat(ntile(5) over(order by DaysBetweenLastOrders desc),F_Score,M_Score) RFM_Cell
FROM
	rfm
ORDER BY
	DaysBetweenLastOrders;
END $$