--Tenants
--Author Erick Saenz

Declare @isID Int = Null
Declare @isCreditScore Int = Null
Declare @isFirstName NVARCHAR = Null;
Declare @isLastName NVARCHAR = Null;
Declare @isPhone Int = Null;
Declare @isEmail NVARCHAR = Null;

--Try define the declarations from get request
--Catch keep it as null the query will know

Select * 
From Tenant T
Where (@isID IS NOT NULL AND (T.TenantID = @isID)) OR
		(@isFirstName IS NOT NULL AND (T.FirstName = @isFirstName)) OR
		(@isLastName IS NOT NULL AND (T.LastName = @isLastName)) OR
		(@isEmail IS NOT NULL AND (T.Email = @isEmail)) OR
		(@isPhone IS NOT NULL AND (T.PhoneNumber = @isPhone))

