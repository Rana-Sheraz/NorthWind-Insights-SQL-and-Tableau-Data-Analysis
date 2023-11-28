DELIMITER $$
Create procedure shipping_report()
BEGIN
with abc as(
    SELECT s.ShipperID, 
        s.CompanyName
       ,O.OrderID
       ,DATEDIFF(o.ShippedDate, o.RequiredDate) AS DateDifference
       ,o.ShippedDate
       ,o.RequiredDate,
       CASE 
           WHEN DATEDIFF(o.ShippedDate, o.RequiredDate) > 0 THEN 'Delayed'
           WHEN DATEDIFF(o.ShippedDate, o.RequiredDate) <= 0 THEN 'Before Time'
         
       END AS DeliveryStatus
FROM shippers s

JOIN orders o ON s.ShipperID = o.ShipVia
where o.ShippedDate is not null
)

SELECT 
s.shipperid
,s.companyname 
,COUNT(distinct abc.OrderID) AS TotalOrders 
,Count(DISTINCT case when abc.DeliveryStatus = 'Before Time' THEN abc.OrderID END) AS OnTimeOrders
,100 - Count(DISTINCT case when abc.DeliveryStatus = 'Delayed' THEN abc.OrderID END)/COUNT(distinct abc.OrderID) *100 PctOnTimeOrders
,Count(DISTINCT case when abc.DeliveryStatus = 'Delayed' THEN abc.OrderID END) AS DelayedOrders
,Count(DISTINCT case when abc.DeliveryStatus = 'Delayed' THEN abc.OrderID END)/COUNT(distinct abc.OrderID) *100 PctDelayedOrders


,CASE 
        WHEN AVG(abc.DateDifference) <= 0 THEN CONCAT(ROUND(ABS(AVG(abc.DateDifference))), ' Days Earlier')
        WHEN AVG(abc.DateDifference) > 0 THEN CONCAT(ROUND(AVG(abc.DateDifference)), ' Days Late')

    END AS Avg_Delivery_Days


,AVG(Freight) AS AverageFreightCost
,COUNT(distinct o.ShipCountry) AS number_of_countries
,COUNT(distinct o.shipregion) AS total_regions

FROM shippers s
JOIN orders o ON s.ShipperID = o.shipvia
RIGHT JOIN abc ON s.ShipperID = abc.ShipperID
GROUP BY s.ShipperID, s.CompanyName;
END $$