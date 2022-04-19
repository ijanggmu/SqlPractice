select * from Customer
select * from Items
select * from ItemTrans
select * from CustomerDetails
Select t.CName as CustomerName,t.Price ,t.IName as ItemName,c.CAddress as CustomerAddress 
from Customer c,Items i,ItemTrans t 
where t.CName=c.CName and t.IName=i.IName ;
Create table CustomerDetails(
customer_Id int
FOREIGN KEY (customer_Id) REFERENCES Customer(Id),
);
Alter table ItemTrans
add customer_Id int
Foreign key(customer_Id) references Customer(Id)
Alter table ItemTrans
drop column CNAME
CREATE PROCEDURE showall
AS
select * from Customer
select * from Items
select * from ItemTrans
select * from CustomerDetails
GO;
exec showall
Alter table ItemTrans
add Item_Id int
Foreign Key(Item_Id) references Items(Id)

Alter table ItemTrans
drop Column IName

Update ItemTrans
set Item_id=3
where Id=2 