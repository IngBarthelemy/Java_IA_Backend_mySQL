USE tienda;

DROP TABLE IF EXISTS pedido;

DROP TABLE IF EXISTS cliente;

CREATE TABLE cliente(
id INT auto_increment primary key,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
ciudad VARCHAR(60)
);

CREATE TABLE pedido(
id INT auto_increment primary key,
producto VARCHAR(100) NOT NULL,
monto DECIMAL(10,2) NOT NULL,
cliente_id INT NOT NULL,
foreign key (cliente_id) references cliente(id)
);