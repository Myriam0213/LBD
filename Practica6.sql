create database Animals
use Animals;


#drop table Adoptante;
create table Adoptante(
	Adoptante_id int not null auto_increment primary key,
	Nombre_A varchar(50) not null,
    Apellido_A varchar(50) not null,
	Cedula_A varchar(80) not null,
	Telefono_A bigint not null,
	Celular_A bigint not null,
	Direccion_A varchar(200) not null,
	CorreoElectronico_A varchar(50) not null,
    FechaNacimiento_A date
);

insert into Adoptante(Nombre_A, Apellido_A, Cedula_A, Telefono_A, Celular_A, Direccion_A, CorreoElectronico_A, FechaNacimiento_A)
	values("Brayan", "Bravo", '167793', '82998491', '8122099227',  "Colonia Morelia, Nueva Idependencia", "bravonator@gmail.com", "1998-03-26" ),
	("Brenda", "David", '198223', '81892345', '8739273972',  "Colonia Ancira, Centro", "brenda@gmail.com", "1998-02-26" ),
	("Dilan", "Gonzalo", '128196', '81827896', '8238719754',  "Nueva Florida, Idependencia", "dilan@gmail.com", "1997-08-28" ),
	("Valentina", "Martinez", '284927', '80123781', '8867895643',  "Colonia Libertad, Idependencia", "valentina@gmail.com", "1993-04-12" ),
	("Erugio", "Gutierres", '144982', '8123768', '8967896709',  "Calle Baja California, Nueva Idependencia", "erugio@gmail.com", "1995-05-17" ),
	("Fatima", "Villareal", '198981', '82718178', '8193872976',  "Colonia Tlaxcala, Idependencia", "fatima@gmail.com", "1995-03-17" ),
	("Omar", "Patricio", '142312', '82768912', '8287189765',  "Colonia Lago de Chapala, Idependencia", "omar@gmail.com", "1994-06-27" ),
	("Hoanna", "Del Rio", '198645', '82812987', '8298120987',  "Calle 5 de Febrero, Idependencia", "hoanna@gmail.com", "1994-02-02" ),
	("Sara", "Treviño", '188867', '82989817', '8278978915',  "Alfonso Reyes, Centro", "sara@gmail.com", "1998-09-03" ),
	("Bounes", "Yasith", '104246', '82785618', '8278123123',  "Leon Guzman, Nuevo Repueblo", "bounes@gmail.com", "1994-03-22" ),
	("German", "Lomas", '186468', '82789123', '8216756782',  "Colonia Colima, Idependencia", "german@gmail.com", "2001-04-26" ),
	("Jashit", "Briones", '122229', '82638918', '8823987654',  "Colonia Florencia Antillon, Barrio Antiguo", "jashit@gmail.com", "1995-03-26" ),
	("Heane", "Vazquez", '183927', '82341234', '8124561896',  "Calle 5 de Mayo, Centro", "heane@gmail.com", "1996-05-21" ),
	("Ayli", "Reina", '111299', '82378129', '8453782897',  "Calle Santa Catalina, Fierro", "ayli@gmail.com", "1998-02'18" ),
	("Kamile", "Quintana", '112821', '89821789', '8189823490',  "Lindavista, Guadalupe", "kamile@gmail.com", "1992-04-21" );
   
    select * from Adoptante;


drop table Rescatista;
create table Rescatista(
	Rescatista_id int not null auto_increment primary key,
	Nombre_R varchar(150) not null,
    Apellido_R varchar(50) not null,
	Cedula_R varchar(80) default null,
	Telefono_R bigint not null,
	Celular_R bigint not null,
	Direccion_R varchar(200) default null,
	CorreoElectronico_R varchar(150) not null,
    FechaNacimiento_R varchar(150) not null
);


insert into Rescatista(Nombre_R, Apellido_R, Cedula_R, Telefono_R, Celular_R, Direccion_R, CorreoElectronico_R, Fechanacimiento_R)
  values("Brayan", "Bravo", '167793', '82998491', '8122099227',  "Colonia Morelia, Nueva Idependencia", "bravonator@gmail.com", "1998-03-26" ),
	("Brenda", "David", '198223', '81892345', '8739273972',  "Colonia Ancira, Centro", "brenda@gmail.com", "1998-02-26" ),
	("Dilan", "Gonzalo", '128196', '81827896', '8238719754',  "Nueva Florida, Idependencia", "dilan@gmail.com", "1997-08-28" ),
	("Valentina", "Martinez", '284927', '80123781', '8867895643',  "Colonia Libertad, Idependencia", "valentina@gmail.com", "1993-04-12" ),
	("Erugio", "Gutierres", '144982', '8123768', '8967896709',  "Calle Baja California, Nueva Idependencia", "erugio@gmail.com", "1995-05-17" ),
	("Fatima", "Villareal", '198981', '82718178', '8193872976',  "Colonia Tlaxcala, Idependencia", "fatima@gmail.com", "1995-03-17" ),
	("Omar", "Patricio", '142312', '82768912', '8287189765',  "Colonia Lago de Chapala, Idependencia", "omar@gmail.com", "1994-06-27" ),
	("Hoanna", "Del Rio", '198645', '82812987', '8298120987',  "Calle 5 de Febrero, Idependencia", "hoanna@gmail.com", "1994-02-02" ),
	("Sara", "Treviño", '188867', '82989817', '8278978915',  "Alfonso Reyes, Centro", "sara@gmail.com", "1998-09-03" ),
	("Bounes", "Yasith", '104246', '82785618', '8278123123',  "Leon Guzman, Nuevo Repueblo", "bounes@gmail.com", "1994-03-22" ),
	("German", "Lomas", '186468', '82789123', '8216756782',  "Colonia Colima, Idependencia", "german@gmail.com", "2001-04-26" ),
	("Jashit", "Briones", '122229', '82638918', '8823987654',  "Colonia Florencia Antillon, Barrio Antiguo", "jashit@gmail.com", "1995-03-26" ),
	("Heane", "Vazquez", '183927', '82341234', '8124561896',  "Calle 5 de Mayo, Centro", "heane@gmail.com", "1996-05-21" ),
	("Ayli", "Reina", '111299', '82378129', '8453782897',  "Calle Santa Catalina, Fierro", "ayli@gmail.com", "1998-02'18" ),
	("Kamile", "Quintana", '112821', '89821789', '8189823490',  "Lindavista, Guadalupe", "kamile@gmail.com", "1992-04-21" );
    
    
    select * from Rescatista;
    


#drop table Domicilio
create table Domicilio(
	Domicilio_id int not null auto_increment primary key,
	Pais varchar(150) not null,
	Estado varchar(150) not null,
	Ciudad varchar(150) not null,
	Municipio varchar(150) default null
);

insert into Domicilio(Pais, Estado, Ciudad, Municipio) values('Alemania','Baviera','Munich','Hadern'),
																('Bolivia','La Paz','Obrajes','San dilcon'),
																('Australia','Sidney', 'Nueva Gales del Sur',''),
																('Canada','Nuevo Brunswick','Moncton','Mosclin'),
																('Chile','Provincia de Melipilla','Melipilla','Chocalan'),
																('India','Kerala','Calcuta','Pavangad'),
																('China','Jiangsu','Yancheng','Tinghu'),
																('Corea del Sur','Seúl','Yongsan-gu','Hangang-daero'),
																('Corea del Norte','Pionyang','Ulmil Pavilion','Jun'),
																('Costa Rica','San Jose','Pavas','Av venticinco'),
																('Ciudad del Vaticano','Basílica de San Pedro','Basílica','Border Path'),
																('España','Madrid','Testuan','Almenaria'),
																('Estados Unidos','Carolina del Norte','Charlotte','Dilworth'),
																('Rusia','Republica de Saja','Yakutsk','Росon'),
																('Mexico','Monterrey','Nuevo Leon','Centro');
                                                                
                                                                
				select * from Domicilio;
                
                

#drop table IdentidadMascota
create table IdentidadMascota(
	IdentidadMascota_id int not null auto_increment primary key,
	Nombre_IM varchar(150) default null,
	TipoMascota_IM varchar(100) not null,
	Raza_IM varchar(100) not null,
	Localidad varchar(200) not null,
	Edad int not null,
	Genero varchar(10) not null,
	Tamaño varchar(15) default null, #Pequeño, Mediano, Grande
	Vacunacion binary default null
);




insert into IdentidadMascota(Nombre_IM, TipoMascota_IM, Raza_IM, Localidad, Edad, Genero, Tamaño, Vacunacion)
																values('Lulu','Perro','Chihuahue','Monterrey','12','F','Pequeño',BINARY(1)),
																('Panda','Perro','Chihuahue','Chile','8','F','Pequeño',BINARY(0)),
																('Caramelo','Loro','Corgi galés de Pembroke','Mexico','5','F','Pequeño',BINARY(0)),
																('Bely','Perro','Golden retriever','Estados Unidos','4','M','Mediano',BINARY(1)),
																('Michi','Gato','Gato himalayo','Hawaii','6','M','Pequeño',BINARY(0)),
																('Wilson','Gato','San Bernardo','España','2','M','Pequeño',BINARY(1)),
																('Pixie','Gato','Europeo de Pelo corto','Canada','1','F','Pequeño',BINARY(1)),
																('Brutus','Perro','Pastor Aleman','Alemania','7','M','Grande',BINARY(1)),
																('Bri','Perro','Samoyedo','Australia','3','F','Pequeño',BINARY(0)),
																('Licenciado','Tortuga','Trachemys scripta troostii','Guadalupe','9','M','Pequeño',BINARY(0));
                                                                
							


								select * from IdentidadmAscota;





#drop table CentroDeServicio
create table CentroDeServicio(
	CentroDeServicio_id int not null auto_increment primary key,
	NombreDelEstablecimiento varchar(150) ,
	LocalidadServicio varchar(200)
);




insert into CentroDeServicio(NombreDelEstablecimiento, LocalidadServicio)values
																					('PetsAdop','Monterrey'),
																					('PetsAdop','Guadalupe'),
																					('PetsAdop','Mexico'),
																					('PetsAdop','Estados Unidos'),
																					('PetsAdop','Hawaii'),
																					('PetsAdop','España'),
																					('PetsAdop','Canada'),
																					('PetsAdop','Alemania'),
																					('PetsAdop','Australia'),
																					('PetsAdop','Corea del Sur');
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                       select * from CentroDeServicio;                                             
												



												#Ya empiezan las llaves foraneas#
#drop table AdoptaMascotas
create table AdoptaMascotas(
	AdoptaMascotas_id int not null auto_increment primary key,
	TipoMascota_AM varchar (100),
	Raza_AM varchar(100),
	Localidad_AM varchar(200),
    #---------------------------------------------------------------------------------------------------------------------------------#
	IdentidadMascota_id1 int,
	constraint fk_M foreign key(IdentidadMascota_id1) references IdentidadMascota(IdentidadMascota_id)	
)






drop table ContratoAdopcion
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

