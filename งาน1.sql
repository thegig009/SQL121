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



select o.OrderID เลขใบสั่งซื้อ , c.CompanyName ลูกค้า ,o.ShipAddress ส่งไปที่
from Orders o, Customers c, Employees e
where o.CustomerID = c.CustomerID
 AND o.EmployeeID=e.EmployeeID

select o.OrderID เลขใบสั่งซื้อ , c.CompanyName ลูกค้า, E.FirstName ลูกค้า ,o.ShipAddress ส่งไปที่
from Orders o 
     join  Customers c on o.CustomerID= c.CustomerID
     join  Employees e on o.EmployeeID= e.EmployeeID



select e.EmployeeID , FirstName , count(*)as [จำนาน order]  
from Employees e join Orders o on e.EmployeeID= o.EmployeeID 
where year(OrderDate)=1998
group by e.EmployeeID,FirstName
order by 3 

--ต้องการชื่อสินค้าที่ nancy ขายได้ ทังหมด ดรียงตามลำดับรหัสสินค้า
select distinct p.ProductID , p.ProductName
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
                 join [Order Details] od on o.OrderID = od.OrderID
                 join Products p on od.ProductID = p.ProductID
where e.FirstName = 'Nancy'
order by ProductID


-- ต้องการชื่อบริษัทลูกค้า Around the Horn ซื้อสินค้า

select distinct s.Country
from Customers c join Orders o on o.CustomerID = o.CustomerID
                 join [Order Details] od on o.OrderID = od.OrderID
                 join Products p on od.ProductID = od.ProductID
                 join Suppliers  s on s.SupplierID = s.SupplierID
where c.CompanyName = 'Around the Horn  ' 


-- บริษัทลูกค้าชื่อ Aroun the Horn ซื้อสินค้าอะไรบ้างจำนานเท่าใด
select  p.ProductID, p.ProductName ,sum(quantity) as [sum of quantity]
from Customers c join Orders o on c.CustomerID = o.CustomerID
                 join [Order Details] od  on od.OrderID = o.OrderID
                 join Products p on p.ProductID = od.ProductID

where c.CompanyName = 'Around the Horn  ' 
group by p.ProductID , p.ProductName
order by 1

--ต้องการหมายเลขใบสื้งซื่่อ ชื่อพนักงาน เเละยอดขายในใบสั้งชื่อ 
select o.OrderID , e.FirstName,
       sum((od.Quantity * od.UnitPrice * (1-od.Discount))) as TotalCach
from Orders o join Employees e on o.EmployeeID = e.EmployeeID
              join [Order Details] od on o.OrderID = od.OrderID
group by o.OrderID, e.FirstName
order by OrderID 
 



