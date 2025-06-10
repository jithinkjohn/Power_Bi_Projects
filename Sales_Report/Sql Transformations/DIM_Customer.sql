-- Cleansed DIM_Customers Table --
SELECT 
  c.CustomerKey AS CustomerKey, 
  --c.GeographyKey, 
  --c.CustomerAlternateKey, 
  --c.Title, 
  c.FirstName AS [FirstName], 
  --c.MiddleName, 
  c.LastName AS [LastName], 
  c.FirstName + ' ' + c.LastName AS [Full Name], 
  --c.NameStyle, 
  --c.BirthDate, 
  --c.MaritalStatus, 
  --c.Suffix, 
  CASE 
    WHEN c.Gender = 'M' THEN 'Male'
    WHEN c.Gender = 'F' THEN 'Female'
    ELSE 'Other'
  END AS Gender, 
  --c.EmailAddress, 
  --c.YearlyIncome, 
  --c.TotalChildren, 
  --c.NumberChildrenAtHome, 
  --c.EnglishEducation, 
  --c.SpanishEducation, 
  --c.FrenchEducation, 
  --c.EnglishOccupation, 
  --c.SpanishOccupation, 
  --c.FrenchOccupation, 
  --c.HouseOwnerFlag, 
  --c.NumberCarsOwned, 
  --c.AddressLine1, 
  --c.AddressLine2, 
  --c.Phone, 
  c.DateFirstPurchase AS DateFirstPurchase, 
  --c.CommuteDistance, 
  g.City AS [Customer City]
FROM 
  dbo.DimCustomer AS c
  LEFT JOIN dbo.DimGeography AS g 
    ON g.GeographyKey = c.GeographyKey
ORDER BY 
  CustomerKey ASC;
