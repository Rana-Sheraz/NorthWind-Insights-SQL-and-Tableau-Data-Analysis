
create table critical_inventory as (Select  p.ProductName
	   ,round(sum(od.quantity)/count(distinct date_format(o.orderdate, '%Y%M'))) MonthlyAvgUnitsSold 
       ,sum(od.quantity)
       ,ReorderLevel 
       ,UnitsinStock  
       ,(round(sum(od.quantity)/count(distinct date_format(o.orderdate, '%Y%M')))) * 2 SuggestedUnitsInStock
       ,round(sum(od.quantity)/count(distinct date_format(o.orderdate, '%Y%M'))) As NewReorderLevel
       
 FROM
        Products p
    JOIN
        `order details` od ON p.ProductID = od.ProductID
    JOIN
        Orders o ON od.OrderID = o.OrderID
WHERE UnitsinStock <  ReorderLevel AND discontinued = 0
GROUP BY p.ProductName, UnitsinStock, ReorderLevel
order by UnitsinStock
)
