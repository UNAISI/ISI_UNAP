create procedure pa_obtener_Login
@user int = null,
@pass varchar (25) = null
as
Select e.idEmpleado, e.nombre, ru.nombreRol, e.idDepartamento
from Empleado e inner join RolUsuario ru on ru.idRol=e.idRol
where e.idEmpleado=@user and e.password=@pass

