use Northwind
go 



select CategoryID, ProductID, ProductName, UnitPrice, 
  (select avg(UnitPrice) 
    from Products 
	 where CategoryID = p.CategoryID) as AvgPrice,
  UnitPrice - (select avg(UnitPrice) 
    from Products 
	 where CategoryID = p.CategoryID) as PriceDiff
  from Products as p

-- =============================================

select CategoryID, avg(UnitPrice) as AvgPrice
  from Products
  group by CategoryID

select p.CategoryID, ProductID, ProductName, UnitPrice, AvgPrice
   from Products p join 
      (
		select CategoryID, avg(UnitPrice) as AvgPrice
		  from Products
		  group by CategoryID
	  ) as g on g.CategoryID = p.CategoryID


select * from suppliers where Country='USA'
select * from Products

select * from Products
 where SupplierID in (select SupplierID from suppliers where Country='USA') 


select * from Products
order by CategoryID,UnitPrice desc



