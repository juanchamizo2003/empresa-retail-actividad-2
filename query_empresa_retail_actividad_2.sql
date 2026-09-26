-- Función REPLACE: Reemplaza una subcadena por otra dentro de un texto o campo de una tabla
SELECT cli_correo,
REPLACE(cli_correo, '@gmail.com', '@empresa.com') AS correo_corporativo 
FROM cliente;

-- Función REVERSE: invierte el orden de los caracteres de una cadena.
SELECT cli_nombre,
REVERSE(cli_nombre) AS nombre_invertido 
FROM cliente;

-- Función RIGTH: Extrae un número especificado de caracteres desde el final (la derecha) de una cadena.
SELECT cli_telefono, 
RIGHT(cli_telefono, 4) AS ultimos_cuatro_digitos 
FROM cliente;

-- Función SPACE : Devuelve una cadena formada por el número especificado de espacios
SELECT CONCAT(cli_nombre, SPACE(10), cli_apellido) AS nombre_completo_espaciado 
FROM cliente;

-- SUBSTR: Extrae una subcadena a partir de una posición inicial y por una longitud determinada.
SELECT cli_ciudad,SUBSTR(cli_ciudad, 1, 3) AS abreviatura_ciudad 
FROM cliente;

-- Funcion SUBSTRING:Extrae una porción de la cadena.
SELECT cam_nombre, SUBSTRING(cam_nombre, 1, 10) AS nombre_campania_corto 
FROM campania;

-- Funcion UPPER: Convierte todos los caracteres de una cadena a mayúsculas.
SELECT can_nombre,UPPER(can_nombre) AS canal_mayuscula 
FROM canal;

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