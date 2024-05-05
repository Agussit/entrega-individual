-- Obtener los 5 cursos con más unidades: Escribe una consulta que devuelva los títulos de los 5 cursos que tienen más unidades. Los resultados deben estar ordenados en orden descendente por el número de unidades.

SELECT cursos.titulo AS titulo_curso, COUNT(curso_unidad.unidad_id) AS numero_unidades
FROM cursos
INNER JOIN curso_unidad ON cursos.Id = curso_unidad.curso_id
GROUP BY cursos.Id, cursos.titulo
ORDER BY numero_unidades DESC
LIMIT 5;

-- Obtener la media de unidades por curso: Escribe una consulta que calcule la media de unidades por curso. Los resultados deben estar agrupados por el título del curso.

SELECT cursos.titulo, AVG(cnt) AS media_unidades
FROM cursos
JOIN (
    SELECT curso_id, COUNT(*) AS cnt  
    FROM curso_unidad
    GROUP BY curso_id
) AS unidades_por_curso
ON cursos.Id = unidades_por_curso.curso_id
GROUP BY cursos.titulo;

-- Obtener los usuarios asociados a más de 3 cursos: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 3 cursos. Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.

SELECT usuarios.nombre AS nombre, COUNT(usuario_curso.usuario_id) AS cantidad_cursos
FROM usuarios
INNER JOIN usuario_curso ON usuarios.id = usuario_curso.usuario_id
GROUP BY usuarios.nombre
HAVING COUNT(usuario_curso.usuario_id) > 3
ORDER BY usuarios.nombre ASC;

-- Obtener las 10 primeras clases que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 10 primeras clases que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden ascendente por la fecha de inicio.

SELECT DISTINCT titulo, fecha_inicio
FROM clases
WHERE fecha_inicio > '2024-05-01' -- Cambia '2024-05-01' por la fecha determinada
ORDER BY fecha_inicio
LIMIT 10;

-- Obtener el número de bloques por tipo para una clase específica: Escribe una consulta que devuelva el número de bloques por tipo para una clase específica. Los resultados deben estar agrupados por el tipo de bloque.
SELECT bloques.tipo, COUNT(*) AS cantidad_de_bloques
FROM clases
JOIN bloques ON clases.bloque_id = bloques.Id
WHERE clases.titulo = 'Estructura de un documento HTML'
GROUP BY bloques.tipo;

-- Obtener el nombre y el apellido de los usuarios, sustituyendo los valores nulos por una cadena vacía: Escribe una consulta que devuelva el nombre y el apellido de los usuarios, utilizando una función para sustituir los valores nulos por una cadena vacía.
SELECT COALESCE(nombre, '') AS nombre, COALESCE(apellido, '') AS apellido
FROM usuarios;

-- Obtener los 3 cursos con la mayor cantidad de usuarios: Escribe una consulta que devuelva los títulos de los 3 cursos que tienen más usuarios asociados. Los resultados deben estar ordenados en orden descendente por el número de usuarios.

SELECT cursos.titulo, COUNT(usuario_curso.usuario_id) AS cuenta_de_usuarios
FROM cursos
INNER JOIN usuario_curso ON cursos.Id = usuario_curso.curso_extra_id
GROUP BY cursos.Id
ORDER BY COUNT(usuario_curso.usuario_id) DESC
LIMIT 3;

-- Obtener el promedio de clases por unidad para cada curso: Escribe una consulta que calcule el promedio de clases por unidad para cada curso. Los resultados deben estar agrupados por el título del curso.

SELECT cursos.titulo, count(curso_unidad.curso_id)
FROM cursos
INNER JOIN curso_unidad ON curso_unidad.curso_id=cursos.id





