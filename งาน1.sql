-- เเสดงชื่อประเภทสินค้า ชื่อสินค้า และ ราคาสินค้า
select CategoryName,ProductName ,UnitPrice
from Products , categories 
where products.CategoryID = Categories.CategoryID


select CategoryName,ProductName ,UnitPrice
from Products JOIN categories 
on products.CategoryID = Categories.CategoryID


select CategoryName,ProductName ,UnitPrice 
from Products as P JOIN Categories as C
On P.CategoryID = C.CategoryID


select CompanyName , OrderID
from Orders , Shippers
where Shippers.ShipperID = Orders.ShipVia



select CompanyName , OrderID
from Orders JOIN Shippers
on  Shippers.ShipperID = Orders.ShipVia

--ต้องการรหัสสินค้า ชื่อสินค้า บริษัทผู้จำหน่าย ประเทศ
select p.ProductID,p.ProductName,s.CompanyName,s.Country
from Products p JOIN Suppliers s 
on p.SupplierID= s.SupplierID

select p.ProductID,p.ProductName,s.CompanyName,s.Country
from Products p , Suppliers s 
where p.SupplierID= s.SupplierID

select * 
from Orders ,Shippers 
where Shippers.ShipperID = Orders.ShipVia
AND OrderID = 10275
