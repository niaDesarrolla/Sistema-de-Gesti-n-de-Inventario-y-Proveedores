💻 Sistema de Gestión de Inventario y Proveedores (SQL / Oracle XE)

📌 Resumen del Proyecto
Este es un proyecto personal desarrollado para aplicar y consolidar las habilidades de modelado, administración y análisis de datos utilizando Oracle Database Express Edition (Oracle XE). El sistema simula la gestión de las relaciones con proveedores y el control del inventario de productos.

Objetivo principal: Demostrar el dominio del lenguaje SQL (DDL, DML, Transacciones) y la capacidad para generar métricas de negocio.

🛠️ Tecnologías Utilizadas
Motor de Base de Datos: Oracle Database Express Edition (Oracle XE)

Lenguaje de Programación: SQL

Herramientas de Desarrollo: SQL Developer

💡 Habilidades y Alcance Demostrado
Este repositorio contiene los scripts SQL que validan las siguientes capacidades:

1. Modelado y Estructura (DDL)
Diseño Relacional: Creación de un esquema de base de datos con relaciones 1:N y definición de la integridad referencial.

Implementación: Uso de comandos CREATE TABLE, CREATE INDEX, y la aplicación de restricciones (PRIMARY KEY, FOREIGN KEY, NOT NULL) para definir la estructura de la base de datos.

2. Manipulación y Consistencia (DML / Transacciones)
Control de Datos: Ejecución de comandos INSERT, UPDATE y DELETE para la gestión del ciclo de vida de los datos de inventario.

Integridad Transaccional: Uso de Transacciones (COMMIT y ROLLBACK), demostrando cómo asegurar que las operaciones complejas mantengan la consistencia de los datos ante errores o finalizaciones exitosas.

3. Análisis, Reportes y Funciones Avanzadas
Consultas de Agregación: Implementación de funciones SUM, COUNT, y AVG para calcular métricas de rendimiento (ej. total de productos comprados por proveedor, precio promedio de venta).

Consultas Complejas: Generación de reportes uniendo información de múltiples tablas mediante el uso de JOINs y Subconsultas.

Optimización: Creación de Vistas básicas como objetos persistentes para simplificar y acelerar las consultas analíticas más frecuentes.

Lógica de Negocio: Aplicación de funciones de conversión (TO_CHAR, TO_NUMBER) y expresiones condicionales (CASE) para la clasificación y análisis especializado de los datos.

📂 Estructura del Repositorio
DDL_Esquema.sql: Contiene el código para la creación de todas las tablas, índices y restricciones.

DML_Carga_Inicial.sql: Scripts con datos de prueba (INSERT INTO) para poblar las tablas.

Consultas_Reportes_Analiticos.sql: Scripts con las consultas complejas, JOINs, VISTAS y el uso de Agregación/CASE.

DML_Transaccional_Ejemplo.sql: Demostración práctica del uso de COMMIT y ROLLBACK.

Estado del Proyecto: En curso. (Finalización estimada: 07/11/2025).
