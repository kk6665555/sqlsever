use Northwind

select CategoryID,avg(UnitPrice)  as avgPrict
/*into newlable 產生一個新表*/
into #temp1   /* # 記憶體裡面的表 結束連線即結束*/
from Products
where ProductID >=0
group by CategoryID

select * from #temp1
where avgPrict>30



select CategoryID,avg(UnitPrice)  as avgPrict
from Products
where ProductID >=0
group by CategoryID having avg(UnitPrice) >30  /*having 後面 最好使用原名稱*/





select * from [Order Details] 
  order by OrderID

select OrderID, ProductID, Quantity, sum(Quantity)
  from [Order Details] 
  group by OrderID, ProductID, Quantity
  order by OrderID

select OrderID, ProductID, sum(Quantity)
  from [Order Details] 
  group by OrderID, ProductID with rollup
  order by OrderID

select OrderID, ProductID, sum(Quantity)
  from [Order Details] 
  group by OrderID, ProductID with cube
  order by OrderID

  select OrderID, ProductID, sum(Quantity)
  from [Order Details] 
  group by rollup (OrderID, ProductID) 
  order by OrderID