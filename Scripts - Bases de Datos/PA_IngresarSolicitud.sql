create procedure pa_solicitar
@idSoli varchar(10) = null,
@departamento varchar(15) = null,
@tipo char(5) = null,
@fecha date = null
as
begin

if(@idSoli is not null and @departamento is not null and @tipo is not null and @fecha is not null)
	begin
		if((select count(*) from Departamento where idDepartamento=@departamento)>0)
			begin
				if((select count(*) from Solicitud where idSolicitud=@idSoli)=0)
					begin
						insert into Solicitud values(@idSoli,@departamento,@tipo,@fecha)
						print 'Registro exitoso'
					end
				else
					raiserror( 'El id de la solicitud no es valido',16,1)
			end
		else
			raiserror('El departamento no existe',16,1)		
	end
else
	raiserror( 'Hay valores nulos',16,1)
end


select *
from Departamento
select *
from Tipo_Solicitud
select *
from Solicitud
select *
from usuario
exec pa_solicitar 'S002','D003','TS001','15-13-2014'
delete 
from Solicitud