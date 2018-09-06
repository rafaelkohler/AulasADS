SELECT
	ProductID,
	[Name],
	ListPrice,
	SafetyStockLevel
FROM Production.Product
WHERE
	ListPrice = 0

UPDATE Production.Product
SET 
ListPrice = 1,
[Name] = [Name] + ' (1)'	
WHERE
	ListPrice = 1
	--MUDA O VALOR DOS PRODUTOS DE 0 PARA 1

SELECT * FROM Production.Product