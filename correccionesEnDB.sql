-- Insertar relaciones usuario-curso para 40 usuarios
INSERT INTO usuario_curso (usuario_id, curso_extra_id) VALUES
(1, 1), (1, 3), (1, 5), (1, 7), (1, 9),
(2, 2), (2, 4), (2, 6), (2, 8), (2, 10),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
(4, 6), (4, 7), (4, 8), (4, 9), (4, 10),
(5, 1), (5, 3), (5, 5), (5, 7), (5, 9),
(6, 2), (6, 4), (6, 6), (6, 8), (6, 10),
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5),
(8, 6), (8, 7), (8, 8), (8, 9), (8, 10);

-- Insertar relaciones curso-unidad para cada curso
INSERT INTO curso_unidad (curso_id, unidad_id)
VALUES
-- Curso 1: Desarrollo Web con HTML y CSS
(1, ROUND(RAND() * (74 - 4) + 4)), 
(1, ROUND(RAND() * (74 - 4) + 4)), 
(1, ROUND(RAND() * (74 - 4) + 4)), 
(1, ROUND(RAND() * (74 - 4) + 4)), 
(1, ROUND(RAND() * (74 - 4) + 4)), 
-- Curso 2: Introducción a JavaScript
(2, ROUND(RAND() * (74 - 4) + 4)), 
(2, ROUND(RAND() * (74 - 4) + 4)), 
(2, ROUND(RAND() * (74 - 4) + 4)), 
(2, ROUND(RAND() * (74 - 4) + 4)), 
-- Curso 3: Desarrollo de Aplicaciones Web con PHP y MySQL
(3, ROUND(RAND() * (74 - 4) + 4)), 
(3, ROUND(RAND() * (74 - 4) + 4)), 
(3, ROUND(RAND() * (74 - 4) + 4)), 
(3, ROUND(RAND() * (74 - 4) + 4)), 
(3, ROUND(RAND() * (74 - 4) + 4)), 
(3, ROUND(RAND() * (74 - 4) + 4)), 
-- Curso 4: Programación en Python
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
(4, ROUND(RAND() * (74 - 4) + 4)), 
-- Curso 5: Desarrollo de Aplicaciones Móviles con Flutter
(5, ROUND(RAND() * (74 - 4) + 4)), 
(5, ROUND(RAND() * (74 - 4) + 4)), 
(5, ROUND(RAND() * (74 - 4) + 4)), 
(5, ROUND(RAND() * (74 - 4) + 4)),
-- Curso 6: [Nombre del Curso 6]
(6, ROUND(RAND() * (74 - 4) + 4)), 
(6, ROUND(RAND() * (74 - 4) + 4)),

(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
(7, ROUND(RAND() * (74 - 4) + 4)), 
-- Curso 5: Desarrollo de Aplicaciones Móviles con Flutter
(8, ROUND(RAND() * (74 - 4) + 4)), 
(8, ROUND(RAND() * (74 - 4) + 4)), 
(8, ROUND(RAND() * (74 - 4) + 4)), 
(8, ROUND(RAND() * (74 - 4) + 4)),
-- Curso 6: [Nombre del Curso 6]
(9, ROUND(RAND() * (74 - 4) + 4)),
(9, ROUND(RAND() * (74 - 4) + 4)),

-- Curso 10: [Nombre del Curso 10]
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4)),
(10, ROUND(RAND() * (74 - 4) + 4));

-- Actualizar bloques
UPDATE bloques
SET titulo = 'Bloque 1', tipo = 'texto', visibilidad = 1, contenido = 'Este es un bloque de texto.'
WHERE Id = 1;

UPDATE bloques
SET titulo = 'Bloque 2', tipo = 'video', visibilidad = 1, contenido = 'https://www.youtube.com/watch?v=VIDEO_ID_1'
WHERE Id = 2;

UPDATE bloques
SET titulo = 'Bloque 3', tipo = 'presentacion', visibilidad = 0, contenido = 'https://example.com/presentacion1'
WHERE Id = 3;

UPDATE bloques
SET titulo = 'Bloque 4', tipo = 'pdf', visibilidad = 1, contenido = 'https://example.com/documento.pdf'
WHERE Id = 4;

UPDATE bloques
SET titulo = 'Bloque 5', tipo = 'archivo', visibilidad = 1, contenido = 'https://example.com/archivo.zip'
WHERE Id = 5;
