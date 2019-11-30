
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
perfil varchar(30) not null,
estado int not null
)
go
insert into usuario values('Gabriel','Castro','Gabriel@gmail.com','123','admin',1)
go
select * from usuario