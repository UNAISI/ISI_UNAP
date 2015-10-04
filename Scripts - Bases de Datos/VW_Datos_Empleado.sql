create view vw_Datos_Empleado
as
select e.nombre as Nombre, e.apellido as Apellido, d.nombre as Departamento,c.nombreCargo as Cargo, e.estado as Estado
from Departamento d inner join Empleado e on d.idDepartamento = e.idDepartamento inner join Cargo c on c.idCargo=e.idCargo