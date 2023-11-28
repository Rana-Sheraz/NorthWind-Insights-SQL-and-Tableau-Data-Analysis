

SELECT
	   p.ProductID,
	   p.ProductName,
       c.categoryname,
	   sum(od.unitprice*quantity) totalsale,
       count(distinct o.customerid) unique_customers,
       dense_rank() over (order by (sum(od.unitprice*od.quantity)) desc) 'rank'
FROM `order details` od
left join orders o
on o.orderid = od.orderid
Left join products p
ON p.productid = od.productid
Left join categories c
on c.categoryid = p.categoryid
group by p.productname,categoryname,p.ProductID