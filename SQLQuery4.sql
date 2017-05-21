use Northwind
go

/* 500 
  1. 以 SQL Enterprise Manager 檢視 Shippers table 的欄位定義
  2. 請寫一道指令, 新增一筆運輸公司的資料到 Shippers table
     Shippers(CompanyName): Never Lose
     電話(Phone): (040) 0048126
  執行之後, 確認一下那筆新加入的運輸公司, 編號是幾號?
 */ 
 insert into Shippers
	(CompanyName,Phone) values('chinese','(040)0048126')


--select @@IDENTITY
select * from Shippers



/* 510 
  請寫一道指令, 將剛才那筆 Never Lose 的公司名稱(CompanyName)改成
  'Never Lost', 電話(Phone)改成'(123) 1234567', 
 */ 
 update Shippers
	set CompanyName = 'Never Lost', Phone = '(123)1234567'
	where ShipperID = 4




/* 520
  請寫一道指令, 將產品類別(CategoryID) = 1 的產品資料(products) 
  的單價(UnitPrice)調高百分之 5, 其餘類別不變
 */ 
 update Products
 set UnitPrice = UnitPrice * 0.95
	where CategoryID = 1

select * from Products



/* 530
  對不起, 不小心講錯了, 不是產品類別(CategoryID) = 1 啦..., 什麼!?
  你已經改了...., hmmm..., 可以麻煩請你改回來嗎?
 */ 





/* 540
  請寫一道指令 刪除剛才那筆 Never Lost 運輸公司的資料
 */ 





