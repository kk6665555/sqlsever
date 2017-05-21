use Northwind
go


create procedure a1 as /*包成一個副程式*/
	select * from Products
go

execute a1 /*呼叫 執行 a1*/
go

drop procedure a1 /*刪除 */
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


drop procedure a1 /*刪除 */
go
create procedure a1 
@min money = 0,
@max money = 999
as 
	select * from Products where UnitPrice between @min and @max
go

execute a1  --call by order  有給預設值 可呼叫沒有值
execute a1 @max=17 -- call by name 可只有用指定其中一個 但不能只有數字

go



drop procedure a1 /*刪除 */
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