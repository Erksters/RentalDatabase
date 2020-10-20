--populate Table PropertyOwnder
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

		  Select *
		  From PropertyOwner