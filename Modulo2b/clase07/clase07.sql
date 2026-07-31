SELECT USER(), CURRENT_USER();

SHOW VARIABLES LIKE 'port';

#Crea una base de datos tiend
CREATE DATABASE tienda;
#siempre debe usar esta base de datos
USE tienda;

#Crea una tabla o una entidad
CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    activo BOOLEAN DEFAULT TRUE,
    fecha_registro DATE
);

# Inspeccionar una entidad con DESCRIBE
DESCRIBE usuario;

#Insertar datos en la entidad usuario
INSERT INTO usuario (nombre, correo, fecha_registro)
VALUES ('Ana Torres', 'ana@correo.com', '2026-07-01');

INSERT INTO usuario (nombre, correo, fecha_registro)
VALUES ('Carlos Ruiz', 'carlos@correo.com', '2026-07-05');

SELECT * FROM usuario;


CREATE TABLE perfil (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL UNIQUE,
    bio VARCHAR(255),
    telefono VARCHAR(20),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);


CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80)
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    producto VARCHAR(120) NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha DATE,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);



INSERT INTO cliente (nombre, ciudad)
VALUES ('Laura Gomez', 'Bogota');

INSERT INTO cliente (nombre, ciudad)
VALUES ('Pedro Diaz', 'Medellin');

INSERT INTO pedido (cliente_id, producto, monto, fecha)
VALUES (1, 'Teclado mecanico', 180000.00, '2026-07-10');

INSERT INTO pedido (cliente_id, producto, monto, fecha)
VALUES (1, 'Mouse gamer', 95000.00, '2026-07-11');

INSERT INTO pedido (cliente_id, producto, monto, fecha)
VALUES (2, 'Monitor 24', 620000.00, '2026-07-12');

SELECT nombre, ciudad
FROM cliente;

SELECT producto, monto
FROM pedido
WHERE monto > 100000;

SELECT producto, monto
FROM pedido
ORDER BY monto DESC;

SELECT cliente.nombre, pedido.producto, pedido.monto
FROM cliente
JOIN pedido ON cliente.id = pedido.cliente_id
ORDER BY cliente.nombre;
