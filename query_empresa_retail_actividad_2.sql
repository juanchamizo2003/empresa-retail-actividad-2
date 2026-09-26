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