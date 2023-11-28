DELIMITER $$
create procedure employee_ranking() 
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
)

select  
	    EmployeeId
	   ,concat(firstname,' ',lastname) EmployeeName
       ,MonthlyAverageSale
       ,UniqueCustomers
       ,MonthlyAverageOrder
       ,row_number() over (order by MonthlyAverageSale desc,UniqueCustomers desc,MonthlyAverageOrder desc) Mr_rank 
       ,row_number() over(order by UniqueCustomers desc, MonthlyAverageOrder desc ) Cr_Rank
       ,row_number() over(order by MonthlyAverageOrder desc) Or_Rank
       ,row_number() over() Ranks
       
from  employee_info;
END $$

