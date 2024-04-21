//1.Вывести данные о товарах (проекция: названиетовара, цена, //названиекатегории, названиекомпаниипоставщика)

SELECT ProductName, Price, Categories.CategoryName, Suppliers.SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

____________________________________________________________

//2. Вывести список стран, которые поставляют морепродукты

/*признаю, здесь долго думал и в итоге обратился к chatGPT чтобы подправить

Исправления:

В выражении JOIN Suppliers ON Products.SupplierID = Suppliers.Country вы используете Suppliers.Country, чтобы соединить таблицы. Вероятно, это ошибка, так как Country скорее всего столбец, содержащий название страны, а не идентификатор поставщика. Предполагаю, что вы хотели бы соединить таблицы по идентификатору поставщика (SupplierID). Так что исправил это на Suppliers.SupplierID.
Аналогично, в выражении JOIN Categories ON Products.CategoryID = Categories.CategoryName вы используете Categories.CategoryName для соединения таблиц, но это не является правильным подходом. Скорее всего, вам нужно использовать идентификатор категории (CategoryID) для соединения таблиц.
Добавлена фильтрация по категории морепродуктов с помощью предложения WHERE Categories.CategoryName = 'морепродукты'.
Использовано ключевое слово DISTINCT, чтобы избежать дублирования строк в результате, если какая-то страна поставляет несколько категорий морепродуктов.
Пожалуйста, убедитесь, что имена столбцов и условия соответствуют вашей базе данных.

*/

SELECT DISTINCT Suppliers.Country, Categories.CategoryName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Seafood'
_________________________________________

//3. Вывести два самых дорогих товара из категории Beverages из USA

SELECT Price, ProductName, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Beverages'
ORDER BY Price DESC
LIMIT 2
_______

//4. Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT ProductName, Price * 1.20 AS Price_USD 
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
ORDER BY Price DESC
LIMIT 1

//5. Дайте короткий ответ на вопрос: в чем отличие БД от СУБД:

БД это база данных, то есть какая-то структурированная область хранения чего-то.
СУБД это то, что имеет набор инструментов для работы внутри этой базы, с тем что в ней лежит.