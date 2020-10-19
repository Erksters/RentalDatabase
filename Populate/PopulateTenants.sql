--Populate Tenants
-- Author Erick Saenz

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

	Select *
	From Tenant T