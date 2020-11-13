CREATE procedure [dbo].GetTenant(@id varchar(50))
	as begin
		select *	
		from Tenant T 
		where T.TenantID = @id;
	end