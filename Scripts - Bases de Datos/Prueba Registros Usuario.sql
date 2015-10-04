create procedure pa_registrar_Empleado
@id int = null,
@departamento varchar (15) = null,
@rol tinyint = null,
@cargo tinyint = null,
@password varchar(16) = null,
@nombre varchar(20) = null,
@apellido varchar(20) = null,
@direccion varchar(30) = null
as
begin
if((select count(*) from Empleado where @id=idEmpleado)<1)
begin
	if((select count(*) from Departamento where @departamento=idDepartamento)>0)
	begin
		insert into Empleado values(@id,@departamento,@rol,@cargo,@password,@nombre,@apellido,@direccion,'Activo')
		print 'Se hizo el registro con exito'
	end
	else
		raiserror('El departamento no existe',16,1)
end
else
	raiserror('El usuario ya existe',16,1)	
end

--exec pa_registrar_Empleado 1008,'D003',3,2,'123mario','Mario','Barquero','Liberia'
