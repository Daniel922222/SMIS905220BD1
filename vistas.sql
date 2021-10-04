USE Northwind;

SELECT
	p.ProductName producto,
	c.CategoryName categoria
FROM
	Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

---Creando vista asignada en clase 
CREATE VIEW listadoProducto
AS
SELECT
	p.ProductName Productos,
	c.CategoryName Categorias,
	s.ContactName Provedor
FROM
	Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
INNER JOIN Suppliers s
ON p.SupplierID = s.SupplierID
GROUP BY c.CategoryName, p.ProductName, s.ContactName;

SELECT * FROM listadoProducto