create database Adopta
use Adopta

--Tabla Adoptante
create table Adoptante(
	Adoptante_id int,
	Nombre_A varchar(150),
	Cedula_A varchar(80),
	Telefono_A bigint,
	Celular_A int,
	Direccion_A varchar(200),
	CorreoElectronico_A varchar(150),
	constraint pk_Ai primary key(Adoptante_id)
)

GO


--Tabla Rescatista
create table Rescatista(
	Rescatista_id int,
	Nombre_R varchar(150),
	Cedula_R varchar(80),
	Telefono_R bigint,
	Celular_R int,
	Direccion_R varchar(200),
	CorreoElectronico_R varchar(150),
	constraint pk_Ri primary key(Rescatista_id)
)

GO


/**Tabla de Domicilio
create table Domicilio(
	Domicilio_id uniqueidentifier,
	Pais varchar(100),
	Estado varchar(100),
	Ciudad varchar(100),
	Municipio varchar(100),
	constraint pk_Di primary key(Domicilio_id)
)*/



/**Tabla Identidad Mascota*/
create table IdentidadMascota(
	IdentidadMascota_id int,
	Nombre_IM varchar(150),
	TipoMascota_IM varchar(100),
	Raza_IM varchar(100),
	Localidad varchar(200),
	Edad int,
	Genero varchar(10),
	Tamaño int,
	Vacunacion bit,
	constraint pk_IM primary key(IdentidadMascota_id)
)

GO


--Tabla Centro De Servicio
create table CentroDeServicio(
	CentroDeServicio_id int,
	NombreDelEstablecimiento varchar(150),
	LocalidadServicio varchar(200),
	constraint pk_CDS primary key(CentroDeServicio_id)
)

GO


--Tabla Adoptar Mascotas (Con una clave foranea)
create table AdoptaMascotas(
	AdoptaMascotas_id int,
	TipoMascota_AM varchar (100),
	Raza_AM varchar(100),
	Localidad_AM varchar(200),
	constraint pk_AM primary key(AdoptaMascotas_id)	
)

GO


--Tabla Contrato Adopcion (Con muchas claves foraneas)
create table ContratoAdopcion(
	ContratoAdopcion_id int,
	FechaAdopcion_CA datetime,
	CentroDeServicio_id1 int,
	Adoptante_id1 int,
	Rescatista_id1 int,
	IdentidadMascota_id1 int,
	Costo_CA money,
	constraint pk_CA primary key(ContratoAdopcion_id),
	constraint fk_Cs foreign key(CentroDeServicio_id1) references CentroDeServicio(CentroDeServicio_id),
	constraint fk_Ado foreign key(Adoptante_id1) references Adoptante(Adoptante_id),
	constraint fk_Res foreign key(Rescatista_id1) references Rescatista(Rescatista_id),
	constraint fk_Mas foreign key(IdentidadMascota_id1) references IdentidadMascota(IdentidadMascota_id)
)

GO

