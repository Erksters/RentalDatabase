--Populate Table ContractAgreements
--Author Erick Saenz

Select * 
From Contract

Select *
From Tenant

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