use Northwind
GO

create table #temp
(
ProductID int,
nitsInStock int,
total int
)



-- 定義 Cursor (請留意 Keyset 選項)
DECLARE CursorLab CURSOR
Keyset
FOR 
select ProductID,UnitsInStock from Products
  order by ProductID
-- 開啟 Cursor
OPEN CursorLab

-- 請檢視第一筆的內容
-- @@FETCH_STATUS
declare @ProductID int = 0
declare @UnitsInStock int = 0
declare @total int = 0
FETCH NEXT FROM CursorLab into @ProductID, @UnitsInStock
while (@@FETCH_STATUS = 0)
begin
	 set @total=@total+@UnitsInStock
	 print @ProductID
	 print @UnitsInStock
	 print @total
	 insert into #temp values (@ProductID,@UnitsInStock,@total)
	FETCH NEXT FROM CursorLab into @ProductID, @UnitsInStock
end
select @@FETCH_STATUS /*@@FETCH_STATUS  為第幾個*/

-- 在另一個 Client 修改資料
-- update Customers set ContactName = 'Maria Anders2' where CustomerID = 'ALFKI'

-- 返回前一筆(原先的第一筆), 資料內容是什麼?
FETCH PRIOR FROM CursorLab

-- 結束練習
CLOSE CursorLab
deallocate CursorLab

select * from #temp

drop table #temp

