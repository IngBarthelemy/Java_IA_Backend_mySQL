# 🛒 Sistema de Gestión de Clientes y Pedidos

Aplicación de consola desarrollada en **Java** para practicar la conexión entre una aplicación Java y una base de datos **MySQL** mediante **JDBC**.

El proyecto implementa operaciones **CRUD (Create, Read, Update, Delete)** sobre la entidad `Cliente`, utilizando el patrón de diseño **DAO (Data Access Object)**.

---

## 📌 Descripción del proyecto

Este proyecto permite gestionar información de clientes almacenada en una base de datos MySQL desde una aplicación desarrollada en Java.

La aplicación permite realizar las siguientes operaciones:

- ➕ Insertar clientes.
- 📋 Listar clientes.
- ✏️ Actualizar información de clientes.
- 🗑️ Eliminar clientes.
- 🔌 Comprobar la conexión entre Java y MySQL.
- 📦 Gestionar pedidos relacionados con clientes.
- 🔗 Trabajar con relaciones entre tablas mediante claves foráneas.
- 🔎 Realizar consultas SQL.
- 📊 Utilizar consultas `JOIN`.
- 🔐 Utilizar `PreparedStatement` para consultas parametrizadas.

---

## 🎯 Objetivos

El objetivo principal del proyecto es aprender y practicar:

- Programación Orientada a Objetos (POO).
- Conexión de Java con MySQL.
- JDBC (Java Database Connectivity).
- Patrón DAO.
- Interfaces en Java.
- Separación de responsabilidades.
- Operaciones CRUD.
- Consultas SQL.
- Claves primarias.
- Claves foráneas.
- Relaciones entre tablas.
- Uso de `PreparedStatement`.
- Manejo de excepciones `SQLException`.
- Uso de `try-with-resources`.

---

# 🛠️ Tecnologías utilizadas

| Tecnología | Uso |
|---|---|
| Java | Lenguaje de programación principal |
| JDBC | Conexión entre Java y MySQL |
| MySQL | Sistema gestor de base de datos |
| MySQL Workbench | Administración de la base de datos |
| MySQL Shell | Ejecución de comandos SQL |
| Git | Control de versiones |
| GitHub | Repositorio remoto |

---

# 📂 Estructura del proyecto

```text
src/
└── main/
    └── java/
        ├── app/
        │   └── App.java
        │
        ├── config/
        │   └── ConexionBD.java
        │
        ├── dao/
        │   ├── ClienteDAO.java
        │   └── ClienteDAOImpl.java
        │
        ├── model/
        │   └── Cliente.java
        │
        └── Main.java



🏗️ Arquitectura del proyecto
                 
        
                 ┌──────────────────┐
                 │     App.java     │
                 │  Capa principal  │
                 └────────┬─────────┘
                          │
                          ▼
                 ┌──────────────────┐
                 │   ClienteDAO     │
                 │    Interface     │
                 └────────┬─────────┘
                          │
                          ▼
                 ┌──────────────────┐
                 │ ClienteDAOImpl   │
                 │ Implementación   │
                 └────────┬─────────┘
                          │
                          ▼
                 ┌──────────────────┐
                 │   ConexionBD     │
                 │   JDBC / MySQL   │
                 └────────┬─────────┘
                          │
                          ▼
                 ┌──────────────────┐
                 │      MySQL       │
                 │      tienda      │
                 └──────────────────┘
