use Northwind
go

/* 500 
  1. �H SQL Enterprise Manager �˵� Shippers table �����w�q
  2. �мg�@�D���O, �s�W�@���B�餽�q����ƨ� Shippers table
     Shippers(CompanyName): Never Lose
     �q��(Phone): (040) 0048126
  ���椧��, �T�{�@�U�����s�[�J���B�餽�q, �s���O�X��?
 */ 
 insert into Shippers
	(CompanyName,Phone) values('chinese','(040)0048126')


--select @@IDENTITY
select * from Shippers



/* 510 
  �мg�@�D���O, �N��~���� Never Lose �����q�W��(CompanyName)�令
  'Never Lost', �q��(Phone)�令'(123) 1234567', 
 */ 
 update Shippers
	set CompanyName = 'Never Lost', Phone = '(123)1234567'
	where ShipperID = 4




/* 520
  �мg�@�D���O, �N���~���O(CategoryID) = 1 �����~���(products) 
  �����(UnitPrice)�հ��ʤ��� 5, ��l���O����
 */ 
 update Products
 set UnitPrice = UnitPrice * 0.95
	where CategoryID = 1

select * from Products



/* 530
  �藍�_, ���p�������F, ���O���~���O(CategoryID) = 1 ��..., ����!?
  �A�w�g��F...., hmmm..., �i�H�·нЧA��^�Ӷ�?
 */ 





/* 540
  �мg�@�D���O �R����~���� Never Lost �B�餽�q�����
 */ 





