--2--
select FirstName,LastName,Title,
DATEDIFF(year,BirthDate,'2021-01-13') as yaþ from Employees 
where DATEDIFF(year,BirthDate,'2021-01-13') <60

--4--
select c.CategoryName,sum(od.Quantity*od.UnitPrice) as Gelir
from Categories c
INNER JOIN Products p
on c.CategoryID=p.CategoryID
inner join [Order Details] od
on p.ProductID=od.ProductID
group by c.CategoryName
order by 2 desc
--3--
select Country from Orders o
INNER JOIN Customers c
ON c.CustomerID=o.CustomerID
GROUP BY Country 
Order by Country asc

--5--
select (e.FirstName + e.LastName) as Çalisan,p.ProductName, sum(od.Quantity) as adet, sum(od.Quantity*od.UnitPrice) as ToplamTutar 
from Products p
inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o 
on od.OrderID=o.OrderID
inner join Employees e
on o.EmployeeID=e.EmployeeID
where e.FirstName='Nancy'
group by e.FirstName+e.LastName,p.ProductName
Order by 4 desc

--8--

select avg(UnitPrice) from [Order Details]
--ortalama fiyat 26,2185


select ProductName,Sum(UnitPrice) as UnitPrice
from Products
group by ProductName,UnitPrice
having sum(UnitPrice)>26.2185
order by sum(UnitPrice) 
--9--

--inner join:2 tablodaki ortak noktalarýn kesiþimidir
select CompanyName,ShipName 
from Customers 
inner join Orders 
on orders.CustomerID=Customers.CustomerID

--left join:2 tabloda sol taraftaki asýl tablodur.yani sol taraftaki verilerin tamamýný getirir diðer tabloda kesiþtiklerini getirir.
select companyName,ShipName
from Customers 
left join orders 
on Orders.CustomerID=Customers.CustomerID

--right join:2 tabloda sað taraftaki asýl tablodur.yani sað taraftaki verilerin tamamýný getirir diðer tabloda kesiþtiklerini getirir.
 select companyName
from Customers 
right join orders 
on Orders.CustomerID=Customers.CustomerID