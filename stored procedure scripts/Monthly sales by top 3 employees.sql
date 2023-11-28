DELIMITER $$
create procedure monthly_sales_by_top_3_employees()
BEGIN
with employee_info as (SELECT e.EmployeeID
	   ,e.firstname
	   ,e.lastname
       ,MAX(o.OrderDate) AS MaxOrderDate
       ,e.HireDate
       ,TIMESTAMPDIFF(MONTH, e.HireDate, MAX(o.OrderDate)) AS Span
       ,SUM(od.Quantity*od.UnitPrice) totalsale
       ,SUM(od.Quantity*od.UnitPrice)/TIMESTAMPDIFF(MONTH, e.HireDate, MAX(o.OrderDate)) MonthlyAverageSale
       ,dense_rank() over (order by SUM(od.Quantity*od.UnitPrice)/TIMESTAMPDIFF(MONTH, e.HireDate, MAX(o.OrderDate)) desc) m_rank 
       ,count(distinct o.orderID) NumberOfOrders
       ,Round(count(distinct o.orderID)/ TIMESTAMPDIFF(MONTH, e.HireDate, MAX(o.OrderDate))) MonthlyAverageOrder
       ,dense_rank() over (order by Round(count(distinct o.orderID)/ TIMESTAMPDIFF(MONTH, e.HireDate, MAX(o.OrderDate))) desc) o_rank
       ,count(distinct o.customerID) UniqueCustomers
       ,dense_rank() over (order by count(distinct o.customerID) desc) c_rank
             
FROM Employees e
LEFT JOIN Orders o ON o.EmployeeID = e.EmployeeID
LEFT JOIN `order details` od on o.orderid = od.orderid
GROUP BY e.EmployeeID, e.HireDate,e.lastname
ORDER BY MonthlyAverageSale desc
),

Employee_Ranking as
(select  
	    EmployeeId
	   ,concat(firstname,' ',lastname) EmployeeName
       ,MonthlyAverageSale
       ,UniqueCustomers
       ,MonthlyAverageOrder
       ,row_number() over (order by MonthlyAverageSale desc,UniqueCustomers desc,MonthlyAverageOrder desc) Mr_rank 
       ,row_number() over(order by UniqueCustomers desc, MonthlyAverageOrder desc ) Cr_Rank
       ,row_number() over(order by MonthlyAverageOrder desc) Or_Rank
       ,row_number() over() Ranks
       
from  employee_info
),

top_3_employees as (
    select * from Employee_Ranking
    where Ranks <= 3
    
),

info_sales as (
    select
        E.EmployeeId,
        E.EmployeeName,
        year(o.OrderDate) as YearOfSale,
        month(o.OrderDate) as MonthOfSale,
        sum(od.UnitPrice * od.Quantity) as Sales_BY_Month
	from Orders o
    left join `order details` as od on o.OrderID = od.OrderID
    right join top_3_employees E on o.EmployeeID = E.EmployeeID 
    group by E.EmployeeId, YearOfSale, MonthOfSale, E.EmployeeName
)

select
    EmployeeId,
    EmployeeName,
    concat(YearOfSale, '-', MonthOfSale) as year_months,
    YearOfSale,
    MonthOfSale,
    Sales_BY_Month
from info_sales;
END $$





