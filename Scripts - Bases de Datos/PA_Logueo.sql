create procedure pa_Logueo
@user int = null,
@password varchar(25) = null
as
Select count(*) 
From Empleado 
Where @user=idEmpleado AND @password=password