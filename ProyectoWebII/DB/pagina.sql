create table login(
ID_login int not null auto_increment primary key,
nombre varchar(50) not null,
pass varchar(50) not null, 
correo varchar(50) not null,
apellidos varchar(100) not null,
telefono varchar(10) not null,
login bool
);



DELIMITER // 
 Create PROCEDURE addusuario(IN correo varchar(50), IN pass varchar(50),IN nombre Varchar(50), IN apellido Varchar(50), in telefono varchar(10))
BEGIN
 insert into login values(0,nombre,pass,correo,apellido,telefono,0);
END //
DELIMITER ;