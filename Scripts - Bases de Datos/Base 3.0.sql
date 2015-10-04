use master
go
CREATE DATABASE [TribunalesDB2] ON PRIMARY
(
NAME = 'Tribunales_DATA',
FILENAME = 'C:\TribunalesDB2\Tribunales_DATA.mdf',
SIZE = 500MB,
maxsize = unlimited,
filegrowth = 125MB
)
Log on 
(
Name = 'Tribunales_log',
filename = 'C:\TribunalesDB2\Tribunales_log.ldf',
size = 50MB,
maxsize = 100MB,
filegrowth = 15%
)
collate Modern_Spanish_CI_AI
go
use TribunalesDB2

create table Articulo(
	idArticulo varchar(15) not null,
	descripcion varchar(15) not null,
	tipo varchar(15) not null,
	marca varchar(15),
	primary key(idArticulo),
);
create table Inventario(
	idArticulo varchar(15) unique not null,
	cantidad int not null,
	articulo varchar(15),
	primary key(articulo),
	foreign key(idArticulo) references Articulo(idArticulo),
	CONSTRAINT AK_idArticulo UNIQUE(idArticulo)
);
create table Sede(
	idSede tinyint not null,
	nombreSede varchar(20) not null,
	primary key(idSede) 
);
create table Departamento(
	idDepartamento varchar(15) not null,
	nombre varchar(20) not null,
	idsede tinyint not null, 
	cantiEmple int not null,
	primary key(idDepartamento),
	foreign key(idSede) references Sede (idSede)
);
create table TelefonoDepartamento(
	idDepartamento varchar(15) not null,
	telefono varchar(10)
	foreign key(idDepartamento) references Departamento(idDepartamento)
);
create table RolUsuario(
	idRol tinyint not null,
	nombreRol varchar(25),
	primary key (idRol)
);
create table Cargo(
	idCargo tinyint not null,
	nombreCargo varchar(20),
	primary key (idCargo)
);
create table Empleado(
	idEmpleado int not null,
	idDepartamento varchar(15) not null,
	idRol tinyint not null,
	idCargo tinyint not null,
	password varchar(16) not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	direccion varchar(30),
	estado varchar(20) not null default 'Activo',
	primary key(idEmpleado),
	foreign key(idDepartamento) references Departamento(idDepartamento),
	foreign key (idRol) references RolUsuario(idRol),
	foreign key (idCargo) references Cargo(idCargo)
);
create table Activo(
	numSerie tinyint not null,
	idEmpleado int null,
	nombre varchar(10) not null,
	marca varchar(20),
	modelo varchar(20),
	tipo varchar(15) not null,
	primary key(numSerie),
	foreign key (idEmpleado) references Empleado(idEmpleado)
);
create table correoEmpleado(
	idEmpleado int not null,
	correo varchar(30)
	foreign key (idEmpleado) references Empleado(idEmpleado)
);

create table TelefonoEmpleado(
	idEmpleado int not null,
	telefono varchar(10),
	foreign key(idEmpleado) references Empleado(idEmpleado)
);
create table SolicitudMaterial(
	idSoliMate varchar(10) not null,
	idEmpleado int not null,
	fecha date not null,
	primary key(idSoliMate),
	foreign key(idEmpleado) references Empleado(idEmpleado)
);
create table DetalleSolicitudMaterial(
	idSolicitud varchar(10) not null,
	idArticulo varchar(15) not null,
	descripcion varchar(20) not null,
	tipo varchar(15) not null,
	cantidad int not null,
	foreign key(idArticulo)references Inventario(articulo),
	foreign key(idSolicitud)references SolicitudMaterial(idSoliMate),
);
create table Tipo_Solicitud(
	idTipoSoli char(5) not null,
	nombreTipo varchar(30) not null,
	primary key (idTipoSoli)
);
create table Solicitud(
	idSolicitud varchar(10) not null,
	idDepartamento varchar(15) not null,
	idTipoSoli char(5) not null,
	fecha date not null,
	primary key(idSolicitud),
	foreign key(idDepartamento) references Departamento(idDepartamento),
	foreign key(idTipoSoli) references Tipo_Solicitud(idTipoSoli)
);
create table AsignacionTrabajo(
	idAsignacion varchar(15) not null,
	idSolicitud varchar(10) unique not null,
	idEmpleado int not null,
	aprobDepart bit default null,
	aprobAdmi bit default null,
	estado varchar(15) not null default 'En espera',
	primary key(idAsignacion),
	foreign key(idSolicitud) references Solicitud(idSolicitud),
	foreign key(idEmpleado) references Empleado(idEmpleado)
);
create table DetalleAsignacion(
	idAsignacion varchar(15) not null,
	observaciones varchar(50) not null,
	foreign key (idAsignacion) references AsignacionTrabajo(idAsignacion)
);
go