--PropertyOwners
--Author Erick Saenz

Declare @isFirstName NVARCHAR = Null;
Declare @isLastName NVARCHAR = Null;
Declare @isPhone Int = Null;
Declare @isEmail NVARCHAR = Null;
Declare @isID Int = Null

--Try define the declarations from get request
--Catch keep it as null the query will know

Select * 
From #PropertyOwners PO
Where (@isID IS NOT NULL AND (PO.PropertyOwnerID = @isID)) OR
		(@isFirstName IS NOT NULL AND (PO.FirstName = @isFirstName)) OR
		(@isLastName IS NOT NULL AND (PO.LastName = @isLastName)) OR
		(@isEmail IS NOT NULL AND (PO.Email = @isEmail)) OR
		(@isPhone IS NOT NULL AND (PO.Phone = @isPhone))