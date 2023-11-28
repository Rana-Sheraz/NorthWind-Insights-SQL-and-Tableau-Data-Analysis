DELIMITER $$ 
create procedure Time_series_of_product_price()
BEGIN
with products_ranking as 
(SELECT
	   p.ProductID,
	   p.ProductName,
       c.categoryname,
	   sum(od.unitprice*quantity) totalsale,
       count(distinct o.customerid) unique_customers,
       dense_rank() over (order by (sum(od.unitprice*od.quantity)) desc) ranks
	
FROM `order details` od
left join orders o
on o.orderid = od.orderid
Left join products p
ON p.productid = od.productid
Left join categories c
on c.categoryid = p.categoryid
group by p.productname,categoryname,p.ProductID
)

SELECT pr.ranks,pr.ProductName,od.ProductID, date_format(orderdate, '%Y-%m') year_months,UnitPrice

FROM orders o
left join `order details` od on o.orderId = od.orderID
Right join products_ranking pr on pr.productID = od.productID 
group by productID, pr.ProductName,UnitPrice,pr.ranks,date_format(orderdate, '%Y-%m');

END $$