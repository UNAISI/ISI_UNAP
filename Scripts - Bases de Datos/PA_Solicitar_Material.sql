create procedure pa_solicitar_Material
@idSoli varchar(10) = null,
@idEmpleado int = null,
@fecha date  = null
as
begin
	if(@idSoli is not null and @idEmpleado is not null and @fecha is not null)
	begin
		if((select count(*) from SolicitudMaterial where idSoliMate = @idSoli)<1)
		begin 
			if((select count(*) from Empleado where idEmpleado=@idEmpleado)>0)
			begin
				insert into SolicitudMaterial values(@idSoli,@idEmpleado,@fecha)
				print 'Registro Exitoso'
			end
			else
				raiserror('El empleado solicitante no existe',16,1)
		end
		else
			raiserror('El ID ya existe',16,1)
	end
	else
		raiserror('Hay valores nulos',16,1)
end