//task 1 - Вывести название и стоимость товаров от 20 до 150 EUR.

SELECT ProductName, Price
 FROM Products
WHERE Price >= 20 AND Price <= 150

__________________________________

//task 2 - Вывести телефоны поставщиков из Japan и Spain.

SELECT Country, Phone 
FROM Suppliers
WHERE 
Country = 'Japan'
OR
Country = 'Spain'
_________________

//task 3 - Вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.

SELECT ProductName, Price
 FROM Products
 WHERE SupplierID != 1
 _____________________

 //task 4 - Вывести контактные имена клиентов, кроме тех, что из Germany и Brazil.

SELECT ContactName
FROM Customers
WHERE 
Country != 'Germany' 
AND
Country != 'Brazil'
___________________

//task 5 - Вывести товары с ценой от 50 до 100 EUR (вкл.)

SELECT * 
FROM Products
WHERE Price >= 50 AND Price <= 100
__________________________________

//task 6 - Вывести название и стоимость товаров из категорий 1 и 3 со стоимостью до 50 EUR (вкл.)

SELECT ProductName, Price
FROM Products
WHERE CategoryID != 1 AND CategoryID != 3 
AND 
Price <= 50
___________