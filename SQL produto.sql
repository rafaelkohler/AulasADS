/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[MakeFlag]
      ,[FinishedGoodsFlag]
      ,[Color]
      ,[SafetyStockLevel]
      ,[ReorderPoint]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[SizeUnitMeasureCode]
      ,[WeightUnitMeasureCode]
      ,[Weight]
      ,[DaysToManufacture]
      ,[ProductLine]
      ,[Class]
      ,[Style]
      ,[ProductSubcategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2016].[Production].[Product]

  SELECT * FROM Production.Product

  SELECT
	  --ProductID,
	  --[Name],
	  COUNT(ListPrice)
  FROM Production.Product
  WHERE
	ListPrice = 1
	--200 linhas
	--ListPrice >= 100 AND ListPrice <= 1000
	--128 linhas
