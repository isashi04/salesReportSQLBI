-- Cleansed FACT InternetSales table--
SELECT 
	 s.ProductKey as [Product Key]
	,LEFT (s.OrderDateKey ,4) AS Year
    ,s.OrderDateKey 
    ,s.DueDateKey
    ,s.ShipDateKey
    ,s.CustomerKey
    --,[PromotionKey]
    --,[CurrencyKey]
    --,[SalesTerritoryKey]
    ,s.SalesOrderNumber
    --,[SalesOrderLineNumber]
    --,[RevisionNumber]
    --,[OrderQuantity]
    --,[UnitPrice]
    --,[ExtendedAmount]
    --,[UnitPriceDiscountPct]
    --,[DiscountAmount]
    --,[ProductStandardCost]
    -- ,[TotalProductCost]
    ,s.SalesAmount
    --,[TaxAmt]
    --,[Freight]
    --,[CarrierTrackingNumber]
    --,[CustomerPONumber]
    --,[OrderDate]
    --,[DueDate]
    --,[ShipDate]
  FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales] as s
 WHERE
	LEFT(s.OrderDateKey,4) >= YEAR(GETDATE())-2
 ORDER BY
	s.OrderDateKey ASC