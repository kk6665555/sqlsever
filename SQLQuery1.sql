use Northwind

select CategoryID,avg(UnitPrice)  as avgPrict
/*into newlable ���ͤ@�ӷs��*/
into #temp1   /* # �O����̭����� �����s�u�Y����*/
from Products
where ProductID >=0
group by CategoryID

select * from #temp1
where avgPrict>30



select CategoryID,avg(UnitPrice)  as avgPrict
from Products
where ProductID >=0
group by CategoryID having avg(UnitPrice) >30  /*having �᭱ �̦n�ϥέ�W��*/





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