use Northwind
GO

create table #temp
(
ProductID int,
nitsInStock int,
total int
)



-- �w�q Cursor (�Яd�N Keyset �ﶵ)
DECLARE CursorLab CURSOR
Keyset
FOR 
select ProductID,UnitsInStock from Products
  order by ProductID
-- �}�� Cursor
OPEN CursorLab

-- ���˵��Ĥ@�������e
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
select @@FETCH_STATUS /*@@FETCH_STATUS  ���ĴX��*/

-- �b�t�@�� Client �ק���
-- update Customers set ContactName = 'Maria Anders2' where CustomerID = 'ALFKI'

-- ��^�e�@��(������Ĥ@��), ��Ƥ��e�O����?
FETCH PRIOR FROM CursorLab

-- �����m��
CLOSE CursorLab
deallocate CursorLab

select * from #temp

drop table #temp

