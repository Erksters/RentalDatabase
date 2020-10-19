Create DATABASE Properties --HELP#

Drop Table if exists ContractAgreement
Drop Table if exists Contract
Drop Table if exists  Tenant
Drop Table if exists Apartment
Drop Table if exists PropertyOwner

Create Table PropertyOwner(
	PropertyOwnerID INT NOT NULL Identity(1,1) Primary Key,
	FirstName NVarchar(64) NOT NULL,
	LastName NVarchar(64) NOT NULL,
	Email NVarchar(64) NOT NULL,
	PhoneNumber Int NOT NULL,
	CreatedOn DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
    UpdatedOn DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),

	UNIQUE(FirstName, LastName)
);

Create Table Apartment(
	ApartmentID INT NOT NULL Identity(1,1) Primary Key,
	MonthlyPrice Int NOT NULL,
	Street1 NVarchar(64) NOT NULL,
	Street2 NVarchar(64) NULL,
	City NVarchar(64) NOT NULL,
	ZipCode NVarchar(6) NOT NULL,
	NumberRooms Int NOT NULL,
	NumberBath Int NOT NULL,
	Available TinyInt NOT NULL DEFAULT(1),
	Refurbished TinyInt NOT NULL Default(0), -- False is 0, Anything else is true
	PetsAllowed TinyInt NOT NULL Default(0), 
	CentralAC TinyInt NOT NULL Default(1),
	DateAvailable DATE NULL DEFAULT(SYSDATETIMEOFFSET()),
	YearBuilt DATE NOT NULL,
	MyPropertyOwner Int Not Null FOREIGN KEY (MyPropertyOwner) References PropertyOwner(PropertyOwnerID),

	CreatedOn DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
    UpdatedOn DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
	
	UNIQUE(Street1, City)
);

Create Table Tenant(
	TenantID INT NOT NULL Identity(1,1) Primary Key,
	CreditScore Int Not Null,
	FirstName NVarchar(64) NOT NULL,
	LastName NVarchar(64) NOT NULL,
	Email NVarchar(64) NOT NULL,
	PhoneNumber NVarChar(10) NOT NULL,
	CreatedOn DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
    UpdatedOn DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),

	UNIQUE(FirstName, LastName)
);

Create Table [Contract](
	ContractID INT NOT NULL Identity(1,1) Primary Key,
	ApartmentID Int Not Null FOREIGN KEY (ApartmentID) References Apartment(ApartmentID),
	DateSigned DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
	DateInEffect DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
	DateExpires DATE NOT NULL DEFAULT(SYSDATETIMEOFFSET()),
	DepositAmount Int NOT NULL,
);

Create Table ContractAgreement(
	ContractAgreement INT NOT NULL Identity(1,1) Primary Key,
	ContractID Int Not Null FOREIGN KEY (ContractID) References Contract(ContractID),
	TenantID Int Not Null FOREIGN KEY (TenantID) References Tenant(TenantID),
	UNIQUE(ContractID, TenantID)	
);
