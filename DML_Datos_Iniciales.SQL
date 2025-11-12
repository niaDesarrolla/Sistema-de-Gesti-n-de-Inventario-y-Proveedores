-- ******************************************************
-- SISTEMA DE GESTIÓN DE INVENTARIO Y PROVEEDORES (DML)
-- ******************************************************

-- ======================================================
-- 1. DATOS MAESTROS (PROVEEDORES)
-- ======================================================
INSERT INTO PROVEEDORES (nombre, contacto, telefono, email) VALUES (
    'Distribuidora Global S.A.',
    'Ana García',
    '555-1234',
    'ana.garcia@global.com'
);

-- ======================================================
-- 2. DATOS MAESTROS (PRODUCTOS)
-- Nota: Usamos el ID 1 para el proveedor, ya que Oracle asignó '1' automáticamente.
-- ======================================================
INSERT INTO PRODUCTOS (nombre, descripcion, precio_unitario, proveedor_id) VALUES (
    'Tornillo Hexagonal M10',
    'Acero inoxidable, 10mm',
    0.75,
    1
);

INSERT INTO PRODUCTOS (nombre, descripcion, precio_unitario, proveedor_id) VALUES (
    'Tuerca de Seguridad',
    'Nylon insert, 10mm',
    0.40,
    1
);


-- ======================================================
-- 3. TRANSACCIÓN DE COMPRA (CABECERA)
-- ======================================================
-- Insertamos la cabecera de la compra al Proveedor ID 1
INSERT INTO COMPRAS (proveedor_id) VALUES (1);


-- ======================================================
-- 4. INSERTAMOS LOS DETALLES DE LA COMPRA (LÍNEAS DE PEDIDO)
-- Nota: Asumimos que la compra_id generada en el paso anterior es '1'.
-- ======================================================

-- Producto 1: Compramos 100 unidades a $0.50
INSERT INTO DETALLE_COMPRA (compra_id, producto_id, cantidad, precio_compra) VALUES (
    1,
    1,
    100,
    0.50
);

-- Producto 2: Compramos 150 unidades a $0.35
INSERT INTO DETALLE_COMPRA (compra_id, producto_id, cantidad, precio_compra) VALUES (
    1,
    2,
    150,
    0.35
);

-- ======================================================
-- 5. GUARDAMOS PERMANENTEMENTE LOS CAMBIOS (COMMIT)
-- ======================================================
COMMIT;
