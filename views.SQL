-- ######################################################################################
-- # VISTAS (VIEWS)
-- # PROYECTO: SISTEMA DE GESTIÓN DE INVENTARIO Y PROVEEDORES
-- # OBJETIVO: Crear vistas para simplificar consultas de reportes y análisis.
-- ######################################################################################

-- ======================================================================================
-- 1. VISTA: VALOR TOTAL DE INVENTARIO POR PROVEEDOR
--
-- Esta vista simplifica la consulta del valor actual del stock (stock_actual * precio_unitario)
-- agrupado por proveedor, haciendo que el reporte sea accesible con un simple SELECT.
-- ======================================================================================

CREATE VIEW V_VALOR_INVENTARIO_PROVEEDOR AS
SELECT
    P.nombre AS Nombre_Proveedor,
    SUM(PR.stock_actual * PR.precio_unitario) AS Valor_Total_Inventario
FROM
    PROVEEDORES P
JOIN
    PRODUCTOS PR ON P.proveedor_id = PR.proveedor_id
GROUP BY
    P.nombre
ORDER BY
    Valor_Total_Inventario DESC;

-- Ejemplo de uso:
-- SELECT * FROM V_VALOR_INVENTARIO_PROVEEDOR;