/* 
Integrantes:
Shantal Duran Castro 
Jeremy Acuña Brenes
Juan Carlos Chacón Araya
Rebeca Barahona Tercero
*/

/*Se crea la base de datos */
drop schema if exists practica;
drop user if exists usuario_practica;
CREATE SCHEMA practica ;

/*Se crea un usuario para la base de datos llamado "usuario_prueba" y tiene la contraseña "Usuario_Clave."*/
create user 'usuario_practica'@'%' identified by 'la_Clave';

/*Se asignan los prvilegios sobr ela base de datos TechShop al usuario creado */
grant all privileges on practica.* to 'usuario_practica'@'%';
flush privileges;

use practica;

CREATE TABLE `arbol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_comun` varchar(45) DEFAULT NULL,
  `tipo_flor` varchar(45) DEFAULT NULL,
  `dureza_madera` varchar(45) DEFAULT NULL,
  `altura_promedio` decimal(5,2) DEFAULT NULL,
  `ruta_imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
