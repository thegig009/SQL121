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

select CompanyName, OrderID 
from Orders ,Shippers 
where Shippers.ShipperID = Orders.ShipVia
AND OrderID = 10275

select CompanyName, OrderID 
from Orders JOIN Shippers 
on Shippers.ShipperID = Orders.ShipVia
AND OrderID = 10275

-- ต้องการหารหัสพนักงาน ชื่อพนักงาน รหัสใบสั้งซื้อที่เกั่ยวข้อง เรียงต่มลำดับรหัสนักงาน 
-- ต้องการรหัสพนักงาน เมือง เเละประเทศของบริษัทผู็จำหน่าย 
-- ต้องการชื่อบริษัทข่นส่ง เเละจำนวนใบสั่่งซื้อที่เกียวข้อง 
-- ต้องการหร้สสินค้า ชื่อสินค้า เเละจำนวนทังหมดที่ขายได้ 

select e.EmployeeID , FirstName , OrderID
from Employees as e JOIN Orders as o
on e.EmployeeID = o.EmployeeID
order by EmployeeID

select ProductID ,ProductName , City , Country
from Products p join Suppliers s 
on p.SupplierID = s.SupplierID


select CompanyName , count(*)
from Orders as o join Shippers as s 
on o.ShipVia = s.ShipperID
group by CompanyName


select p.ProductID,p.ProductName , sum(Quantity) as จำนานที่ขายทั้งหมด
from Products p  join [Order Details] od 
on  p.ProductID = od.ProductID
group by p.ProductID , p.ProductName
order by 1



