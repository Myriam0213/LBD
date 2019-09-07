create database RestauranteRain
GO
use RestauranteRain 
drop table Clientes
GO

create table Clientes(
NUmeroCliente int Not null primary key,
Nombre varchar(255) Not null,
PrimerApellido varchar(255) Not null,
SegundoApellido varchar(255) null,
NombreCompleto as (Nombre + '' + PrimerApellido + '' + SegundoApellido + ''),
TipoDeCliente nvarchar(50) Not null
)
GO

create table Ticket(
IdRestaurante int not null primary key,
DireccionRestaurante int not null,
FechaYHoraDeEntrega datetime not null,

NombreCliente int Not null,
FechaDeEntrega varchar(255) Not null,
NumeroDePedido varchar(255) Not null,

PedidosOrdenados smallint not null,
TotalDePedidos varchar(100) not null,
)
GO

create table Pedido(
precio int not null primary key,
pagado varchar(150) not null,
confirmacion varchar(150) not null,
servicio nvarchar(150)not null
)

create table Menu(
ProductosMenu varchar(100) not null primary key,
PrecioProductos varchar(100)not null
)

create table Mesa(
NumeroMesa varchar(100) not null primary key
)

Select * from Clientes,Ticket,Pedido,Menu,Mesa


Create Index
INDX_Clientes_NombreCompleto on Clientes(NombreCompleto)

Create Index 
INDX_CLientes_TipoDeCliente on Clientes(TipoDeCliente)