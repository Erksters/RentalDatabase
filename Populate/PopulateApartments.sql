--populate Table PropertyOwnder
--Author Erick Saenz

INSERT INTO Apartment(
    MonthlyPrice,
	Street1,
	Street2,
	City,
	ZipCode,
	Available,
	DateAvailable,
	YearBuilt,
	PetsAllowed,
	NumberRooms,
	NumberBath,
	Refurbished,
	CentralAC,
	MyPropertyOwner
)
VALUES 
			(
			599,            --Monthly Price 
			'921 Main',
			null,
			'Manhattan',
			'66502',
			1,              --Available
			GetDate(),	    --Date Available
			'2020-01-01',	--Year Built
			1,				--Pets Allowed
			3,				--NumberRooms
			2,				--Number Baths
			0,				--Refurbished
			1,				--Central AC
			1               --MyPropertyOwner
		  ),
		  (
			499,            --Monthly Price
			'323 Jordan',
			'#2',
			'Topeka',
			'66506',
			1,             --Available
			GetDate(),     --Date Available
			'2020-01-01',  --Year Built
			1,             --Pets Allowed
			3,             --NumberRooms
			2,             --Number Baths
			0,			   --Refurbished
			1,			   --Central AC
			1			   --MyPropertyOwner
		  ),
		  (
			399,        --Monthly Price
			'579 3rd',
			'#18',
			'Topeka',
			'66506',
			0,            --Available
			GetDate(),     --Date Available
			'2019-01-01',  --Year Built
			0,             --Pets Allowed
			1,             --NumberRooms
			1,             --Number Baths
			1,			   --Refurbished
			0,			   --Central AC
			3			   --MyPropertyOwner
		  ),
		  (
			799,        --Monthly Price
			'889 Johnson',
			null,
			'Kansas City',
			'66509',
			1,             --Available
			GetDate(),     --Date Available
			'2014-01-01',  --Year Built
			0,             --Pets Allowed
			4,             --NumberRooms
			2,             --Number Baths
			0,			   --Refurbished
			1,			   --Central AC
			4			   --MyPropertyOwner
		  ),
		  (
			699,        --Monthly Price
			'777 Freedom',
			'#9',
			'Dodge City',
			'66501',
			0,             --Available
			GetDate(),     --Date Available
			'2018-01-01',  --Year Built
			1,             --Pets Allowed
			3,             --NumberRooms
			1,             --Number Baths
			0,			   --Refurbished
			1,			   --Central AC
			5			   --MyPropertyOwner
		  )
		  
		  Select * 
		  From Apartment