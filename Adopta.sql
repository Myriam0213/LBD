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

//*Tabla de Domicilio
create table Domicilio(
	Domicilio_id uniqueidentifier,
	Pais varchar(100),
	Estado varchar(100),
	Ciudad varchar(100),
	Municipio varchar(100),
	constraint pk_Di primary key(Domicilio_id)
)*//

--Tabla Identidad Mascota
create table IdentidadMascota(
	IdentidadMascota_id int,
	Nombre_IM varchar(150),
	Especie_IM varchar(100),
	Raza_IM varchar(100),
	Localidad varchar(200),
	Edad int,
	Genero varchar(10),
	Tamaño int,
	Vacunacion bit,
	constraint pk_IM primary key(IdentidadMascota_id)
)

--