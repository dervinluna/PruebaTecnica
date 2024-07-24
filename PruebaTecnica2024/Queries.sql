-- a) Nombre del proyecto y sus productos correspondientes del proyecto "Premia" (código 1)
SELECT PROYECTO.Nombre AS Proyecto, PRODUCTO.Nombre AS Producto
FROM PROYECTO
JOIN MENSAJE ON PROYECTO.ID = MENSAJE.ID_PROYECTO
JOIN PRODUCTO ON MENSAJE.ID_PRODUCTO = PRODUCTO.ID
WHERE PROYECTO.Codigo = 1;

-- b) Distintos mensajes con proyecto y producto
SELECT PROYECTO.Nombre AS Proyecto, PRODUCTO.Nombre AS Producto, MENSAJE.Descripcion AS Mensaje
FROM MENSAJE
JOIN PROYECTO ON MENSAJE.ID_PROYECTO = PROYECTO.ID
JOIN PRODUCTO ON MENSAJE.ID_PRODUCTO = PRODUCTO.ID;

-- c) Mensajes indicando el proyecto y un solo producto "TODOS" si el mensaje está en todos los productos del proyecto
SELECT 
    PROYECTO.Nombre AS Proyecto, 
    CASE 
        WHEN COUNT(DISTINCT PRODUCTO.ID) = (SELECT COUNT(*) FROM PRODUCTO) THEN 'TODOS' 
        ELSE PRODUCTO.Nombre 
    END AS Producto, 
    MENSAJE.Descripcion AS Mensaje
FROM MENSAJE
JOIN PROYECTO ON MENSAJE.ID_PROYECTO = PROYECTO.ID
JOIN PRODUCTO ON MENSAJE.ID_PRODUCTO = PRODUCTO.ID
GROUP BY PROYECTO.Nombre, MENSAJE.Descripcion, PRODUCTO.Nombre;
