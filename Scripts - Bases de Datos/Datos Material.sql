insert into Articulo values('Art001','Cemento','Construccion','Holcim')
insert into Articulo values('Art002','Tuberia','Fontaneria','A&A')
insert into Articulo values('Art003','Laminas','Construccion','Zinc')
insert into Articulo values('Art004','Tapa goteras','Construccion','Zinc')
insert into Articulo values('Art005','cartulina','manualidad','paperama')

insert into Inventario values('Art001',5,'Art001')
insert into Inventario values('Art002',10,'Art002')
insert into Inventario values('Art003',8,'Art003')
insert into Inventario values('Art004',15,'Art004')

select a.descripcion, i.cantidad
from Articulo a inner join Inventario i on a.idArticulo=i.idArticulo

select *
from RolUsuario
select *
from Empleado