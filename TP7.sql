
CREATE DATABASE Tp1_BD;

use Tp1_BD;

CREATE TABLE Huesped(
idHuesped int(11) not null AUTO_INCREMENT,
    nombre char(25) not null,
    apellido char(25)not null,
    dni int(20) not null,
    domicilio char(30)not null,
    correo char(30) not null,
    celular varchar(30 )not null,
    activo tinyint(1),
    PRIMARY KEY(id_huesped,dni)
   
);

CREATE TABLE Reserva(
    idReserva int(11) not null AUTO_INCREMENT PRIMARY key,
    idHabitacion int(11) NOT NULL,
    idHuesped int(11) not null REFERENCES Huesped,
    fechaInicio date not null,
    fechaFin date not null,
    precioTotal double not null,
    cantPersonas int(11),
    activo tinyInt(1)
)