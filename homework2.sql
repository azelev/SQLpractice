//1.Вывести данные о товарах (проекция: название, ценасоскидкой0.5процента) //по убыванию цены.


SELECT
ProductName, Price * 0.995 AS Price_Down

FROM 
Products

ORDER BY Price DESC

___________________

//2.Вывести товары в диапазоне цены от 50 до 200 EUR (проекция: название, //ценаснаценкой30процентов) по возрастанию цены.

SELECT ProductName, Price * 1.30 AS Price_Up
FROM Products
WHERE Price <= 200 AND Price >= 50
ORDER BY Price ASC
__________________

//3.Вывести всех клиентов, кроме тех, что из USA и UK.

SELECT * 
FROM Customers
WHERE Country NOT IN ('UK', 'USA')
__________________________________

//4.Вывести товары из категорий 2 и 5 (проекция: всеимеющиесяполя, //ценавдолларах)

SELECT * , Price * 1.2 AS Price_USD
FROM Products
WHERE CategoryID IN (2, 5)