use Northwind
go


create procedure a1 as /*�]���@�ӰƵ{��*/
	select * from Products
go

execute a1 /*�I�s ���� a1*/
go

drop procedure a1 /*�R�� */
go


create procedure a1 
@min money,
@max money
as 
	select * from Products where UnitPrice between @min and @max
go

execute a1 10,20 --call by order
execute a1 @min = 10 ,@max=17 -- call by name

go


drop procedure a1 /*�R�� */
go
create procedure a1 
@min money = 0,
@max money = 999
as 
	select * from Products where UnitPrice between @min and @max
go

execute a1  --call by order  �����w�]�� �i�I�s�S����
execute a1 @max=17 -- call by name �i�u���Ϋ��w�䤤�@�� ������u���Ʀr

go



drop procedure a1 /*�R�� */
go
create procedure a1 
@min money =null,
@max money=null
as 
	if(@min is null)
		set @min=0
	if(@max is null)
		select @max=max(UnitPrice) from Products
		select * from Products where UnitPrice between @min and @max
go

execute a1


go