create database AdoptaPets
use AdoptaPets

ALTER AUTHORIZATION ON DATABASE::AdoptaPets TO sa
GO

--Tabla Persona
drop table Persona

create table Persona( 
	Persona_id int not null,
	Nom_p varchar(150) not null,
	Edad_p TINYINT CHECK (Edad_p>18) not null,
	Telefono_p bigint not null,
	Correo_p VARCHAR(100) unique,
	INE bit not null CHECK('SI TIENE INE'=1 or 'NO TIENE INE'=0),
	ComprobanteDomicilio bit not null,

	constraint pk_pi primary key(Persona_id),
)

--Tabla Mascota
drop table Mascota

create table Mascota( 
	Mascota_id int not null,
	Años tinyint not null,
	Raza varchar(80) not null,
	Color varchar(30) not null,
	Tamaño varchar(30) not null, 
	
	constraint pk_mi primary key(Mascota_id)
)

--Tabla ContratoAdopcion

drop table ContratoAdopcion
create table ContratoAdopcion( 
	ContratoAdopcion_id int not null,
	Persona_id2 int not null,
	Mascota_id2 int not null,
	CostoCubrir float not null,
	FechaAdopcion date not null,
	
	constraint pk_CAi primary key(ContratoAdopcion_id),
	constraint fk_Pi2 foreign key(Persona_id2) references Persona(Persona_id),
	constraint fk_Mi2 foreign key(Mascota_id2) references Mascota(Mascota_id),
)

--Tabla CartillaVacunacion
drop table CartillaVacunacion

create table CartillaVacunacion( 
	CartillaVacunacion_id int not null,
	Persona_id3 int not null,
	Mascota_id3 int not null,
	Vacunas varchar(250) not null,
	CostoVacunas float not null,
	FechaVacunas date not null,

	constraint pk_cvi primary key(CartillaVacunacion_id),
	constraint fk_Pi3 foreign key(Persona_id3) references Persona(Persona_id),
	constraint fk_Mi3 foreign key(Mascota_id3) references Mascota(Mascota_id)
)

--Tabla EntregaDeMascota
drop table EntregaDeMascota

create table EntregaDeMascota(
	EntregaDeMascota_id int not null,
	Mascota_id4 int not null,
	Persona_id4 int not null,
	CartillaVacunacion_id2 int not null,
	ContratoAdopcion_id2 int not null,
	
	constraint pk_edmi primary key(EntregaDeMascota_id),
	constraint fk_Pi4 foreign key(Persona_id4) references Persona(Persona_id),
	constraint fk_CAi2 foreign key(ContratoAdopcion_id2) references ContratoAdopcion(ContratoAdopcion_id),
	constraint fk_CVi2 foreign key(CartillaVacunacion_id2) references CartillaVacunacion(CartillaVacunacion_id),
	constraint fk_Mi4 foreign key(Mascota_id4) references Mascota(Mascota_id)
)


select * from Persona
select * from Mascota 
select * from EntregaDeMascota
select * from ContratoAdopcion
select * from CartillaVacunacion
