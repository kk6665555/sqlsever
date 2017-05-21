/* 010 
  �T�w���}���O Northwind ��Ʈw */
use Northwind

/* go �����j�u */
/* 110 
  �мg�@�D���O, �C�X:
  products ��ƪ��Ҧ����~���
 */ select * from products



/* 120 
  �мg�@�D���O. �C�X:
  products ��ƪ��Ҧ����~, ���C��Ʈ�, �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select ProductID, ProductName, UnitPrice
		,UnitsInStock, UnitsOnOrder, ReorderLevel 
	from products
 


/* 130 
  �мg�@�D���O, �C�X:
  products ��ƪ� "�w�s�q�C��A�q�ʶq" �����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
										�w�s		�q��			�A�q��
 */ 
 select ProductID, ProductName, UnitPrice 
 ,UnitsInStock, UnitsOnOrder, ReorderLevel
 from products 
 where UnitsInStock < ReorderLevel
 


/* 140 
  �мg�@�D���O, �C�X:
  products ��ƪ� (�w�s�q + �q�ʤ��ƶq) �C��A�q�ʶq�����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select  ProductID, ProductName, UnitPrice
 , UnitsInStock, UnitsOnOrder, ReorderLevel
 from products
 where (UnitsInStock+UnitsOnOrder) < ReorderLevel




/* 150 
  �мg�@�D���O, �C�X:
  products ��ƪ� "�w�s�q�C��A�q�ʶq" �����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���
  SupplierID, ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel

  �åB, �ۦP�����ӥN��(SupplierID)�����~�бƦb�@�_
 */ 
 select SupplierID, ProductID, ProductName
 , UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 from products
 where UnitsInStock < ReorderLevel
 order by SupplierID


/* 160 
  �мg�@�D ���O �C�X:
  products table ���~�W�٥H C �}�Y�����
 */ 
 select * from products where ProductName like 'C%'


 /*distinct ��ܸ̭� �������@�˪��|�R��  */
 select distinct * from products



/* 170 
  �мg�@�D���O, �C�X:
  products ��ƪ����O�s��(CategoryID)�� 1, 4, 8 �����~���
  �ƧǮ�, �Ы�"���O�s��"�Ƨ�, �ۦP���O�s�������~�����~�W��(ProductName)�ƦC
  order by �᭱�i�H�n�X��
 */ 
 select * from products where CategoryID in (1,4,8) order by CategoryID , ProductName




/* 180 
  �мg�@�D���O, �C�X:
  products ��ƪ�������� 10 �� 20 ������(�]�t 10, 20)�����~���
  �åB���ӳ��(UnitPrice)�Ѥj��p�Ƨ�
  desc ����   asc ���W
 */ 
 select * from products where UnitPrice between 10 and 20 order by UnitPrice asc




/* 190 
  �мg�@�D���O, �C�X:
  products ��ƪ��Ҧ����~, ���C��Ʈ�, 
  �ЦC�X�H�U���
  ProductID, ProductName, UnitPrice, 

  ���L, �U���W�ٽХΤ������:
  ���~�s��, ���~�W��, ���
  as ��W�l as�i�ٲ�
 */ 
 select ProductID as ���~�s��, ProductName as ���~�W��, UnitPrice as ��� from products





-- 210 �ЦC�X����̰����e�T�����~�C
--with ties ��ɭȬۦP�]�[�i�h
select top 3 UnitPrice
from products
order by UnitPrice desc




-- 220 �ЦC�X���~����������C
select avg(UnitPrice)
from products



-- 230 �ХH���O�s��(CategoryID)���� 1, 4, 8 ���p��d��, �p�ⲣ�~����������C

select avg(UnitPrice)
 from products where  CategoryID in (1,4,8)


-- 240 �ЦC�X�U�����~����������C




-- 250 �ЦC�X��������̰����e�T�����~�C
select AVG(UnitPrice) AS �̰����e�T�� from Products
group by CategoryID


select AVG(UnitPrice) AS �̰����e�T�� from Products
group by CategoryID having avg(UnitPrice) > 30
--�����j��30��

/* 310
  �мg�@�D���O, �C�X products ��ƪ��H�U���
  ProductID, ProductName, SupplierID
 */ 
 select ProductID, ProductName, SupplierID from Products



/* 320
   �P�W, ���Ф@�֦C�X�Ө����ӦW��(CompanyName)�B
   �p���q��(Phone)�B�p���H(ContactName)�n��?
   �t�~, �ۦP�����Ӫ���ƽЦC�b�@�_
 */ 
 select ProductID, ProductName as PN, p.SupplierID, CompanyName, Phone, ContactName 
  from products as p join suppliers as s
  on p.SupplierID = s.SupplierID
  order by p.SupplierID



/* 330
   �ڷQ�C�X�u�Ҧ��v�����ӥثe�U�۴��ѧڭ̭��ǲ��~��ƪ���Ӫ�,
   �ثe�S���ѧڭ̲��~�������Ӥ]�n�C�X

   <note>
   �U���O�e, �Х�����U�C���O:
   -- begin --
   insert into suppliers
     (CompanyName, ContactName, Phone)
      values
     ('Taiwan First', 'A-Ban', '(001) 000-0001')
   -- end --
 */ 




-- (Optional)
-- 340 �ЦC�X���u�Ψ���u���ݦ���]ReportsTo�^���M��C




/* 410
  �ЦC�X�U�����~�����O�B�s���B�~�W�B����B
  �������~��������B����P���~����������u���t�v�C
*/
select CategoryID,ProductID,ProductName,UnitPrice,
(select avg(UnitPrice) from Products) as �������,
UnitPrice-(select avg(UnitPrice) from Products) AS ���t
 from Products



/* 420
   �ЦC�X���q�ĤT�����~���q��C
*/
select * from Products




/* 430
  �ЦC�X��o�̦n�e�T�����~�C
*/




