--Populate All With One File
--Author Erick Saenz

INSERT INTO PropertyOwner(
    FirstName,
    LastName,
    Email,
	PhoneNumber    
)
VALUES    (
			'George',
			'Washington',
			'Wash@gmail.com',
			'1111111110'
		  ),
		  (
			'Ben',
			'Franklin',
			'KeepIt100@gmail.com',
			'1111111111'
		  ),
		  (
			'Thomas',
			'Jefferson',
			'WeThePeople@gmail.com',
			'1111111112'
		  ),
		  (
			'Jean',
			'Claude',
			'JC@gmail.com',
			'1111111113'
		  ),
		  (
			'Robin',
			'Williams',
			'RobWil@gmail.com',
			'1111111114'
		  ),
		  (
			'Danny',
			'Devito',
			'Devito@gmail.com',
			'1111111115'
		  ),
		  (
			'Abe',
			'Lincoln',
			'HonestAbe@gmail.com',
			'1111111116'
		  )

INSERT INTO Tenant(
    FirstName,
    LastName,
    Email,
	PhoneNumber,
	CreditScore
    
)
VALUES
    (
        'Lebron',
        'James',
        'sheriff@gmail.com',
        '5555555559',
		700
    ),
    (
        'Alan',
        'Smith',
        'yolo@gmail.com',
        '5555555558',
		'700'
    ),
    (
        'Jerry',
        'Sanchez',
        'developer@gmail.com',
        '5555555557',
		700
    ),
    (
        'DeAngelo',
        'White',
        'imposter@gmail.com',
        '5555555556',
		700
    ),
    (
        'Greg',
        'LongBottom',
        'redissus@gmail.com',
        '0123456789',
		700
    ),
    (
        'Harry',
        'Potter',
        'thisisanemail@gmail.com',
        '5555555554',
		700
    ),
    (
        'Ron',
        'LongBottom',
        'bestemail@gmail.com',
        '5555555553',
		700
    ),
    (
        'Mandy',
        'Williams',
        'fakeemail@gmail.com',
        '5555555552',
		700
    ),
    (
        'Kanye',
        'West',
        'legitemail@gmail.com',
        '5555555551',
		700
    ),
    (
        'Kim',
        'Kardashian',
        'someemail0@gmail.com',
        '5555555555',
		700
    )

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

INSERT INTO Contract(
    DepositAmount,
	DateSigned,
	DateInEffect,
	DateExpires,
	ApartmentID
)
VALUES 
		(
			300,
			GetDate(),
			'2020-01-01',
			'2021-01-01',
			1
		),
		(
			400,
			'2020-03-04',
			GetDate(),
			'2021-04-04',
			2
		),
		(
			500,
			'2018-10-10',
			'2018-11-10',
			GetDate(),
			3
		),
		(
			600,
			GetDate(),
			'2020-12-12',
			'2021-12-12',
			4
		)

INSERT INTO ContractAgreement(
		ContractID,
		TenantID
)
VALUES    
	(
		1,
		1
	 ),
	 (
		 2,
		 2
	 ),
	 (
		3,
		3
	 ),
	 (
		4,
		4
	)
