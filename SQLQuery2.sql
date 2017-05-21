
/*
string:varcher(10) 10 個字元
number: int decimal(5,2) 五個數字 兩個小數點*/

declare @i int =100/*宣告*/
declare @a decimal(6,2)
set @a = 79
select @i = UnitPrice from Products where ProductID = 1

select @i as i,@a as a
go