-- CLeansed DIM_Customers Table --
SELECT 
  c.CustomerKey AS [Customer Key], 
  --  ,[GeographyKey]
  --  ,[CustomerAlternateKey]
  --  ,[Title]
  c.FirstName AS [First Name], 
  --  ,[MiddleName]
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + LastName AS [ Full Name], 
  -- Combined First and Last NAme
  --  ,[NameStyle]
  --  ,[BirthDate]
  --  ,[MaritalStatus]
  --  ,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  c.DateFirstPurchase AS [Date First Purchased], 
  -- ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in Customer City From Geography Table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey
