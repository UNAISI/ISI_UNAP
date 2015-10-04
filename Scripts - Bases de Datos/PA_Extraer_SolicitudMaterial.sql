create procedure pa_extraer_SolicitudMaterial
@id int = null
as
select e.nombre as Nombre, e.apellido as Apellido, sm.fecha as Fecha, dsm.descripcion as Descripcion, a.descripcion as Articulo,dsm.cantidad as Cantidad
from Empleado e inner join SolicitudMaterial sm on e.idEmpleado=sm.idEmpleado 
inner join DetalleSolicitudMaterial dsm on sm.idSoliMate=dsm.idSolicitud 
inner join Articulo a on dsm.idArticulo=a.idArticulo
where e.idEmpleado=@id