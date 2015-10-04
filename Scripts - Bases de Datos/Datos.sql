insert into Sede values(01,'Liberia')
insert into Sede values(02,'Bagaces')
insert into Sede values(03,'Santa Cruz')
insert into Sede values(04,'La Cruz')

insert into Departamento values('D001','Administracion',01,0)
insert into Departamento values('D002','Penal',01,0)
insert into Departamento values('D003','Familia',01,0)
insert into Departamento values('D004','Investigacion',01,0)
insert into Departamento values('D005','Mantenimiento',01,0) 

insert into RolUsuario values(1,'Administrador')
insert into RolUsuario values(2,'Encargado')
insert into RolUsuario values(3,'Personal')
insert into RolUsuario values(4,'Mantenimiento')

insert into Cargo values(01,'Juez')
insert into Cargo values(02,'Auxiliar')
insert into Cargo values(03,'Mantenimiento')
insert into Cargo values(04,'Coordinador')
 
insert into Empleado values(1001,'D001',1, 04,'123pablo','Pablo','Peralta','Liberia','Activo')
insert into Empleado values(1002,'D005',4, 03,'123daniela','Daniela','Aiza','Liberia','Activo')
insert into Empleado values(1003,'D003',2, 04,'123bonnie','Bonnie','Torres','Liberia','Activo')
insert into Empleado values(1004,'D002',2, 04,'123juan','Juan','Peralta','Liberia','Activo')
insert into Empleado values(1005,'D003',3, 02,'123jose','Jose','Morales','Liberia','Activo')
insert into Empleado values(1006,'D005',4, 03,'123denis','Denis','Ortega','Liberia','Activo')
insert into Empleado values(1007,'D002',3, 01,'123daniel','Daniel','Aiza','Liberia','Activo')

exec pa_obtener_Login 1001,'123pablo'
exec pa_Logueo 1001,'123pablo'

insert into Tipo_solicitud values ('TS001','Mantenimiento')
insert into Tipo_solicitud values ('TS002','Personal')
