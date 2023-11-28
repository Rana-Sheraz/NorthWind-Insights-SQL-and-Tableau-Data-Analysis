/*Monthly delays by each by company*/
select 
	 s.ShipperID,s.CompanyName,
     year(o.OrderDate) AS YearOfOrder,month(o.OrderDate) AS MonthOfOrder, 
     concat(year(o.OrderDate),"-",month(o.OrderDate)) as YearMonths,
     Count(case when o.ShippedDate>o.RequiredDate then o.OrderID end) As TotalDelayedOrders,
     count(o.OrderID) MonthlyTotalOrders
     FROM orders o
     Left join 
     shippers s 
     ON o.ShipVia = s.ShipperID
     group by s.ShipperID,s.CompanyName,year(o.OrderDate),month(o.OrderDate),YearMonths
     order by s.ShipperID,s.CompanyName,year(o.OrderDate),month(o.OrderDate),YearMonths
