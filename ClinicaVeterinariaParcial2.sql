create database Clinica_Veterinaria


use Clinica_Veterinaria

Create Table Dueños(
id_Dueño int primary key identity(1,1) not null,
nombre Varchar (50),
apellido Varchar (50) not null,
Direccion Varchar(100) not null,
Sexo Varchar (10),
Departamento Varchar (50) not null,
CodigoPostal INT not null,
Municipio Varchar (50) not null,
Num_Telefono INT
);
drop table Dueños

select * from Dueños

create table contacto(
id_Dueño int primary key identity(1,1) not null,
num_Telefono int references Dueños(id_Dueño)
);
 drop table contacto

select * from contacto


create table Sexo(
id_Sexo int primary key identity(1,1) not null,
Genero int foreign key(Genero) references Dueños(id_Dueño)
);


insert into Dueños(nombre,apellido,Direccion, Sexo, Departamento,CodigoPostal, Municipio, Num_Telefono)
values('Karla','Rodriguez','25 av. norte ','Femenino','San Salvador',1531,'San Marcos',70457678);
insert into Dueños(nombre,apellido,Direccion, Sexo, Departamento,CodigoPostal, Municipio, Num_Telefono)
values('Karla','Rodriguez','25 av. sur ','Femenino','San Salvador',1532,'San Miguelito',70457678);
insert into Dueños (nombre,apellido, Direccion,Sexo, Departamento,CodigoPostal, Municipio, Num_Telefono)
values('Marvin','Rivas', '1° calle poniente', 'Masculino','Chalatenango',144,'Reubicacion',78786655);
insert into Dueños (nombre,apellido, Direccion,Sexo, Departamento,CodigoPostal, Municipio, Num_Telefono)
values('Mario','Rivas','2° avenida sur','Masculino','Chalatenango', 1443,'Azacualpa',23006767)
insert into Dueños (nombre,apellido, Direccion,Sexo, Departamento,CodigoPostal, Municipio, Num_Telefono)
values('Jonathan','Armando','calle principal','Masculino','Chalatenango',1234 ,'Azacualpa' ,60556644);

Select *from Dueños









Create table Mascota(
id_Mascota int PRIMARY KEY identity(1,1) Not null,
nombre Varchar(50) not null,
raza Varchar(25),
peso Varchar(30) not null,
tipoMascota Varchar(50),
);

drop table Mascota

insert into Mascota(nombre, raza, peso, tipoMascota)
values('Firulais','Zahuezo','30KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Amanda','Angora','20KG','gato');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Campeon','Pitbull','25KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Terry','Pastor Aleman','30KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Escooby Doo','Grandanes','32KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Maritza','Australiano','3KG','Perico(Ave)');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Camilo','Mini Lop','8KG','Conejo');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Minotauro','Chino','1KG','Hamster');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Estrella','Persa','10KG','Gato');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Bambi','Chihuahua','8KG','Perro');

select* from Mascota
drop table Mascota

Create table Ingreso(
MotivodeIngreso Varchar (33),
Fecha_Hora_DeIngreso Datetime default getdate() not null,
Observacion Varchar(50) not null
);

insert into Ingreso(MotivodeIngreso, Observacion)
values('fractura de pata', 'Necesita ser operado/a');
insert into Ingreso(MotivodeIngreso, Observacion)
values('parto', 'llevar a zona de parto');
insert into Ingreso(MotivodeIngreso, Observacion)
values('Por Jiote', 'Necesita ser medicado');
insert into Ingreso(MotivodeIngreso, Observacion)
values('Tiene demasiadas pulgas', 'Necesita ser medicado');
insert into Ingreso(MotivodeIngreso, Observacion)
values('Tos seca', 'Necesita medicamentos');
insert into Ingreso(MotivodeIngreso, Observacion)
values('esta triste', 'esta intoxicado');
insert into Ingreso(MotivodeIngreso, Observacion)
values('Inflamacion de estomago', 'tiene parasitos');
insert into Ingreso(MotivodeIngreso, Observacion)
values('Parto', 'normal');
insert into Ingreso(MotivodeIngreso, Observacion)
values('fractura', 'solo es safadura');
insert into Ingreso(MotivodeIngreso, Observacion)
values('enfermo', 'diagnostico de sangre');
insert into Ingreso(MotivodeIngreso, Observacion)
values('enfermo', 'presenta tos grave');
insert into Ingreso(MotivodeIngreso, Observacion)
values('enfermo', 'inflamacion ');
insert into Ingreso(MotivodeIngreso, Observacion)
values('fractura de rodilla', 'Necesita ser operado/a');
insert into Ingreso(MotivodeIngreso, Observacion)
values('parto', 'Necesita ser operado/a');


select *from Ingreso



Create table Veterinario(
id_identificacion int PRIMARY KEY identity(1,1),
Nombre varchar (50) not null,
Apellido Varchar(50) not null,
Cargo varchar(50)
);

insert into Veterinario(Nombre, Apellido, Cargo)
values('Jose', 'Pereira', 'Doctor');
insert into Veterinario(Nombre, Apellido, Cargo)
values('Martin', 'Callado', 'Asistente');
insert into Veterinario(Nombre, Apellido, Cargo)
values('Jorgen', 'Leiva', 'Consultas');
insert into Veterinario(Nombre, Apellido, Cargo)
values('Marta', 'Meléndez', 'Doctora');

select *from Veterinario


