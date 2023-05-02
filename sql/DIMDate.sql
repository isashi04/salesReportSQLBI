--Cleansed DIMDate table
SELECT 
	[DateKey] AS Date
    --,[FullDateAlternateKey]
    --,[DayNumberOfWeek]
    ,[EnglishDayNameOfWeek] AS Day
    --,[SpanishDayNameOfWeek]
    --,[FrenchDayNameOfWeek]
    --,[DayNumberOfMonth]
    --,[DayNumberOfYear]
    ,[WeekNumberOfYear] AS WeekNr
    ,[EnglishMonthName] AS Month
	,LEFT ([EnglishMonthName],3) AS ShortMonth
    --,[SpanishMonthName]
    --,[FrenchMonthName]
    ,[MonthNumberOfYear] AS MonthNr
    ,[CalendarQuarter] AS Quarter
    ,[CalendarYear] AS Year
    --,[CalendarSemester]
    --,[FiscalQuarter]
    --,[FiscalYear]
    --,[FiscalSemester]
  FROM [dbo].[DimDate]
  WHERE [CalendarYear] >= 2019