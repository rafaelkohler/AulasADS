/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2016].[Person].[Person]

  select * from Person.Person

	--select 
		--BusinessEntityID,
		--FirstName, 
		--LastName,
		--EmailPromotion 
	--from 
		--Person.Person

	--where 
		--FirstName='John'
		--EmailPromotion >1 
		--BusinessEntityID > 20000
		--FirstName LIKE 'jo%'
	
		--AND
		--FirstName LIKE '%' + 'Jo' + '%'
		--AND EmailPromotion < 1 

		--OR
		--FirstName LIKE '%' + 'Jo' + '%'
		--OR EmailPromotion >= 1 

	SELECT DISTINCT
		FirstName,
		LastName
	FROM 
		Person.Person
	WHERE 
		FirstName LIKE 'MI%'