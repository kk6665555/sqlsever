
/*
string:varcher(10) 10 �Ӧr��
number: int decimal(5,2) ���ӼƦr ��Ӥp���I*/

declare @i int =100/*�ŧi*/
declare @a decimal(6,2)
set @a = 79
select @i = UnitPrice from Products where ProductID = 1

select @i as i,@a as a
go