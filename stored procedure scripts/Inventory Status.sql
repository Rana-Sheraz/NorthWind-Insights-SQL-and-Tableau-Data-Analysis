DELIMITER $$
create procedure inventory_status()
BEGIN
with inv_info as (SELECT
    p.ProductName,
    SUM(od.Quantity) AS UnitsSold,
    SUM(od.Quantity) / 22 AS MonthlyAverage,
    p.ReorderLevel,
    p.UnitsInStock,
    p.UnitsOnOrder,
    
    CASE
		WHEN p.ReorderLevel = 0 and p.UnitsInStock < (SUM(od.Quantity) / 22)
        THEN 'CRITICAL - Assign A Reorder Level'
		WHEN p.ReorderLevel = 0 and p.UnitsInStock > (SUM(od.Quantity) / 22)
        THEN 'Assign A Reorder Level'
        WHEN  p.ReorderLevel and p.UnitsInStock < (SUM(od.Quantity) / 22) 
        THEN 'Potential StockOut'
        WHEN p.UnitsInStock > (SUM(od.Quantity) / 22)* 3
        THEN 'Optimization Required'
		WHEN p.UnitsOnOrder and p.UnitsInStock < (SUM(od.Quantity) / 22) 
        THEN 'Optimize'
        Else 'No Need To Optimize'
    END AS InventoryStatus
    
FROM
    Products p
JOIN
    `order details` od ON p.ProductID = od.ProductID
JOIN
    Orders o ON o.OrderID = od.OrderID
WHERE
    p.Discontinued = 0
GROUP BY
    p.ProductName,
    p.ReorderLevel,
    p.UnitsInStock,
    p.UnitsOnOrder
#ORDER BY
  #  UnitsSold DESC
),

percentages as (select 
	    count(case when inventorystatus = 'Potential StockOut' then productname end )/ count(productname)*100 PctPotentialStockout
       ,count(case when inventorystatus = 'CRITICAL - Assign A Reorder Level' then productname end )/ count(productname)*100 PctCritical
       ,count(case when inventorystatus = 'Assign A Reorder Level' then productname end )/ count(productname)*100 PctAssignAReorderLevel
       ,count(case when inventorystatus = 'Optimization Required' then productname end )/ count(productname)*100 PctOptimizationRequired
       ,count(case when inventorystatus = 'Optimize' then productname end )/ count(productname)*100 PctOptimize
       ,count(case when inventorystatus = 'No Need To Optimize' then productname end )/ count(productname)*100 PctNoNeedToOptimize
       
from inv_info
)

select  
	 i.ProductName
	,i.ReorderLevel
    ,i.UnitsInStock
    ,i.UnitsOnOrder
    ,i.UnitsSold
    ,i.MonthlyAverage
    ,i.inventorystatus
    
    ,case 
		when inventorystatus = 'Potential StockOut' then sum(PctPotentialStockout) 
        when inventorystatus = 'CRITICAL - Assign A Reorder Level' then sum(PctCritical) 
        when inventorystatus = 'Assign A Reorder Level' then sum(PctAssignAReorderLevel) 
        when inventorystatus = 'Optimization Required' then sum(PctOptimizationRequired) 
        when inventorystatus = 'Optimize' then sum(PctOptimize) 
        when inventorystatus = 'No Need To Optimize' then sum(PctNoNeedToOptimize) 
    
    
    end as StatusPct
from inv_info i
right join percentages p on p.PctOptimize = i.productname
group by 
     i.ProductName
    ,i.ReorderLevel
    ,i.UnitsInStock
    ,i.UnitsOnOrder
    ,i.inventorystatus
    ,i.UnitsSold
    ,i.MonthlyAverage;
END $$