USE base_cursada;

-- Ejecutado de abajo hacia arriba por las FK


-- Crear la tabla usuario_curso
CREATE TABLE usuario_curso (
    Id INT PRIMARY KEY AUTO_INCREMENT,
	usuario_id INT,
    curso_extra_id INT,
    FOREIGN KEY (curso_extra_id) REFERENCES cursos(Id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(Id)
);


CREATE TABLE curso_unidad (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    curso_id INT,
    unidad_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(Id),
    FOREIGN KEY (unidad_id) REFERENCES unidades(Id)
);

CREATE TABLE IF NOT EXISTS usuarios (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    contraseña VARCHAR(100),
    categoria ENUM('estudiante', 'docente', 'editor', 'administrador')    
);

CREATE TABLE cursos (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    descripcion TEXT,
    imagen VARCHAR(255),
    fecha_inicio DATE,
    fecha_finalizacion DATE,
    cupo_maximo INT
);

CREATE TABLE unidades (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    descripcion TEXT,
    fecha_inicio DATE,
	clase_id INT,
    FOREIGN KEY (clase_id) REFERENCES clases(Id)
);

CREATE TABLE clases (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    descripcion TEXT,
    fecha_inicio DATETIME,
    visibilidad TINYINT,
	bloque_id INT,
    FOREIGN KEY (bloque_id) REFERENCES bloques(Id)
);

CREATE TABLE bloques (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    tipo ENUM('texto', 'video', 'presentacion', 'pdf', 'archivo'),
    contenido TEXT
);

-- me di cuenta que me faltaron cosas del enunciado

ALTER TABLE bloques
ADD COLUMN visibilidad TINYINT(1);

ALTER TABLE bloques
ADD COLUMN contenido TEXT;

-- ejecutado de abajo hacia arriba