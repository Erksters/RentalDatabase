--Populate Table Contracts
--Author Erick Saenz

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
			2
		),
		(
			400,
			'2020-03-04',
			GetDate(),
			'2021-04-04',
			4
		),
		(
			500,
			'2018-10-10',
			'2018-11-10',
			GetDate(),
			5
		),
		(
			600,
			GetDate(),
			'2020-12-12',
			'2021-12-12',
			6
		)

		Select *
		From Contract