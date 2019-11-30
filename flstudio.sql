create database Flstudio
go
use Flstudio
go
create table usuario(
id int identity(1,1) not null primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
correo varchar(30) unique not null,
clave varchar(30) not null,
color varchar(30)not null,
perfil varchar(30) not null,
estado int not null
)
go
insert into usuario values('Gabriel','Castro','Gabriel@gmail.com','123','azul','admin',1)
insert into usuario values('Yuri','Marroquin','yuri011218@gmail.com','principal','verde','admin',1)
insert into usuario values('Pedro','Mantilla','Pedro@gmail.com','feldes','rojo','usuario',1)
insert into usuario values('Axl','Chamorro','Axl123@gmail.com','axlutp','azul','usuario',1)
insert into usuario values('Robin','Moscoso','robin_moscoso12@gmail.com','robingona','morado','usuario',1)
go
select * from usuario
create table producto(
id_prod int identity(3000,1) not null primary key,
nombre_prod varchar(30) not null,
precio int not null,
cant int not null,
)
go 
insert into producto values('Fruty_Edition','99',1)
insert into producto values('FL_Studio_Producer_Edition','199',1)
insert into producto values('FL_Studio_Signature_Bundle','299',1)
insert into producto values('FL_Studio_PRO','899',1)
select * from producto
