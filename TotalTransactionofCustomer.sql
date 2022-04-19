
CREATE VIEW [CusDetails] AS
Select c.CName,c.CAddress,i.Price,i.IName 
from Customer c ,Items i ,ItemTrans it
where it.customer_Id=c.Id and  it.item_id=i.id ;
exec showall
select * from CusDetails
select i.Cname as CustomerName,sum(i.Price) as TotalPrice from CusDetails i group by i.CNAME
use cafe
Alter Table ItemTrans
drop column Price