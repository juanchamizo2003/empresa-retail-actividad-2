-- Unir el nombre y el apellido de los clientes en una sola columna llamada "Nombre Completo"
SELECT CONCAT(cli_nombre, ' ', cli_apellido) AS `Nombre Completo` 
FROM cliente;

-- Devuelve la posición (índice) del primer argumento dentro de la lista de los siguientes argumentos
SELECT int_id_interaccion, int_tipo, int_fecha 
FROM interaccion 
ORDER BY FIELD(int_tipo, 'clic', 'comentario', 'visita', 'descarga');

-- Formatea un número con una cantidad específica de decimales y separadores de miles (útil para valores monetarios)
SELECT con_id_conversion, FORMAT(con_valor, 2) AS `valor_formateado` 
FROM conversion;

-- Convierte todo el texto de una cadena a minúsculas (es un sinónimo directo de LOWER).
SELECT can_nombre, LCASE(can_tipo) AS `tipo_minuscula` 
FROM canal;

-- Extrae una cantidad específica de caracteres desde el inicio (izquierda) de una cadena de texto.
SELECT cam_nombre, LEFT(cam_nombre, 3) AS `Abreviatura` 
FROM campania;

-- Devuelve la longitud de una cadena de texto medida en bytes.
SELECT cli_correo, LENGTH(cli_correo) AS `Longitud Correo` 
FROM cliente;

-- Convierte una cadena de texto a minúsculas por completo.
SELECT LOWER(cli_correo) AS `Correo Minúscula` 
FROM cliente;

-- Repite una cadena de texto un número determinado de veces.
SELECT cam_nombre, REPEAT('*', 3) AS `Indicador` 
FROM campania;