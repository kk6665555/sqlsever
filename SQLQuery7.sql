use Northwind
go

declare @a int = 0
set @a = 1
while(@a<3) /*�j�� ���� begin end �A�_��*/

begin
	set @a = @a+1
	print @a
end


