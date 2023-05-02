--Cleansed DimCustomer table--
SELECT c.CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS Name
      --,[MiddleName]
      ,c.LastName AS [Last Name]
	  ,c.FirstName+' '+c.LastName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS [First purchase date]
      --,[CommuteDistance]
	  ,g.city AS [Customer City]
  FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] as c
	LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey
  ORDER BY
   CustomerKey ASC
