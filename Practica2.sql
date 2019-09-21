create database AdoptaPets
use AdoptaPets

--Tabla Persona

create table Persona( 
	Persona_id int,
	Nom_p varchar(150),
	Edad_p TINYINT,
	Telefono_p bigint,
	Correo_p VARCHAR(100),
	INE bit,
	ComprobanteDomicilio bit,
)

--Tabla Mascota

create table Mascota( 
	Mascota_id int,
	Años tinyint,
	Raza varchar(80),
	Color varchar(30),
	Tamaño varchar(30), 
)

--Tabla ContratoAdopcion

create table ContratoAdopcion( 
	ContratoAdopcion_id int,
	Persona_id2 int,
	Mascota_id2 int,
	Nom_p2 varchar(150),
	CostoCubrir float,
	FechaAdopcion date,
)

--Tabla CartillaVacunacion

create table CartillaVacunacion( 
	CartillaVacunacion_id int,
	Persona_id3 int,
	Mascota_id3 int,
	Vacunas varchar(250),
	CostoVacunas float,
	FechaVacunas date,
)

--Tabla EntregaDeMascota

create table EntregaDeMascota(
	EntregaDeMascota_id int,
	Mascota_id4 int,
	Persona_id4 int,
	CartillaVacunacion_id2 int,
	ContratoAdopcion_id2 int,
)


select * from Persona
select * from Mascota 
select * from EntregaDeMascota
select * from ContratoAdopcion
select * from CartillaVacunacion
