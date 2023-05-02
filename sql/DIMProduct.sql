-- Cleansed DIMProduct table-- 
SELECT 
	p.ProductKey
    ,p.ProductAlternateKey AS [Product Item Code]
    ,p.ProductSubcategoryKey AS [Product Subcategory]
    --,[WeightUnitMeasureCode]
    --,[SizeUnitMeasureCode]
    ,p.EnglishProductName AS [Product Name]
    ,ps.EnglishProductSubcategoryName AS [Sub Category], 
    ,pc.EnglishProductCategoryName AS [Product Category], 
    --,[SpanishProductName]
    --,[FrenchProductName]
    --,[StandardCost]
    --,[FinishedGoodsFlag]
    ,p.Color AS [Product Color]
    --,[SafetyStockLevel]
    --,[ReorderPoint]
    --,[ListPrice]
    ,p.[Size] AS [Product Size]
    --,[SizeRange]
    --,[Weight]
    --,[DaysToManufacture]
    ,p.[ProductLine] AS [Product Line]
    --,[DealerPrice]
    --,[Class]
    --,[Style]
    ,p.ModelName AS [Product model name]
    --,[LargePhoto]
    ,p.EnglishDescription AS [Product description]
    --,[FrenchDescription]
    --,[ChineseDescription]
    --,[ArabicDescription]
    --,[HebrewDescription]
    --,[ThaiDescription]
    --,[GermanDescription]
    --,[JapaneseDescription]
    --,[TurkishDescription]
    --,[StartDate]
    --,[EndDate]
  ,ISNULL (p.Status,'Outdated') AS [Product Status]
  FROM
	[AdventureWorksDW2019].[dbo].[DimProduct] as p
	LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY
	p.ProductKey ASC