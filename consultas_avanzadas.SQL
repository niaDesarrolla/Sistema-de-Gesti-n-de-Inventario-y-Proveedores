-- ######################################################################################
-- # CONSULTAS AVANZADAS: JOINS, AGREGACIÓN, SUBCONSULTAS Y DML
-- # PROYECTO: SISTEMA DE GESTIÓN DE INVENTARIO Y PROVEEDORES
-- ######################################################################################

-- ======================================================================================
-- 1. DML AVANZADO: ACTUALIZACIÓN CONDICIONAL DE DATOS
--
-- Se utiliza la cláusula UPDATE en combinación con la función condicional CASE para 
-- asegurar que los campos STOCK_ACTUAL y PRECIO_UNITARIO tengan valores positivos, 
-- permitiendo el cálculo correcto del valor de inventario.
-- ======================================================================================

UPDATE PRODUCTOS
SET
    stock_actual = CASE WHEN stock_actual IS NULL OR stock_actual = 0 THEN 100 ELSE stock_actual END,
    precio_unitario = CASE WHEN precio_unitario IS NULL OR precio_unitario = 0 THEN 25.00 ELSE precio_unitario END
WHERE
    producto_id IN (1, 2);

-- Se actualiza el stock de un producto para garantizar que su proveedor supere el promedio
-- en la consulta de Subconsulta (Sección 3).
UPDATE PRODUCTOS
SET
    stock_actual = 500
WHERE
    producto_id = 1;

COMMIT;

-- ======================================================================================
-- 2. QUERY: CONTEO DE PRODUCTOS POR PROVEEDOR
--
-- Demuestra el uso de JOINS (LEFT JOIN) y la función de agregación COUNT()
-- para obtener reportes resumidos.
-- ======================================================================================

SELECT
    P.nombre AS Nombre_Proveedor,
    COUNT(PR.producto_id) AS Total_Productos_Suministrados
FROM
    PROVEEDORES P
LEFT JOIN
    PRODUCTOS PR ON P.proveedor_id = PR.proveedor_id
GROUP BY
    P.nombre
ORDER BY
    Total_Productos_Suministrados DESC;

-- ======================================================================================
-- 3. QUERY: SUBCONSULTA PARA PROVEEDORES DE ALTO VALOR
--
-- Uso de una SUBCONSULTA dentro de la cláusula HAVING para filtrar
-- proveedores cuyo valor total de inventario (SUM) sea mayor al promedio general (AVG) 
-- de todos los productos.
-- ======================================================================================

SELECT
    P.nombre AS Nombre_Proveedor,
    SUM(PR.stock_actual * PR.precio_unitario) AS Valor_Total_Inventario_Proveedor
FROM
    PROVEEDORES P
JOIN
    PRODUCTOS PR ON P.proveedor_id = PR.proveedor_id
GROUP BY
    P.nombre
HAVING
    SUM(PR.stock_actual * PR.precio_unitario) > (
        SELECT
            AVG(stock_actual * precio_unitario)
        FROM
            PRODUCTOS
    )
ORDER BY
    Valor_Total_Inventario_Proveedor DESC;