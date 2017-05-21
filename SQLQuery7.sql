use Northwind
go

declare @a int = 0
set @a = 1
while(@a<3) /*迴圈 須用 begin end 括起來*/

begin
	set @a = @a+1
	print @a
end


