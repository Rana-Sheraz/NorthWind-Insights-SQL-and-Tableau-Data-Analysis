
Delimiter $$
create procedure increased_product_prices()
BEGIN
with product_info as
 (SELECT p.ProductId, p.ProductName, od.UnitPrice OldPrice,
LEAD (od.UnitPrice,1) OVER (PARTITION BY ProductID ORDER BY od.UnitPrice ) NewPrice
,sum(od.Quantity) UnitsSold_OldPrice
,LEAD (sum(od.Quantity),1) OVER (PARTITION BY ProductID ORDER BY sum(od.Quantity)) UnitsSold_NewPrice
,count(distinct od.orderID) OrderCount_OldPrice
,LEAD (count(distinct od.orderID),1) OVER (PARTITION BY ProductID ORDER BY count(distinct od.orderID)) OrderCount_NewPrice
FROM `order details` od
left join orders o
on o.orderid = od.orderid
Left join products p
ON p.productid = od.productid
Left join categories c
on c.categoryid = p.categoryid

GROUP BY p.ProductId, p.ProductName, od.UnitPrice
)

select ProductName
	   ,OldPrice
       ,NewPrice
       ,(OldPrice+NewPrice)/2 AvgPrice
	   ,(NewPrice-OldPrice)/NewPrice *100 PctIncrease
       , UnitsSold_OldPrice + UnitsSold_NewPrice TotalUnitsSold
       ,OrderCount_OldPrice + OrderCount_NewPrice TotalOrderCount
       ,(((OldPrice+NewPrice)/2)*(UnitsSold_OldPrice + UnitsSold_NewPrice))/(OrderCount_OldPrice + OrderCount_NewPrice ) AverageOrderValue
       
from product_info;
END $$