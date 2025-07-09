CREATE TABLE usuarios_plataforma (
	id_usuario INT PRIMARY KEY IDENTITY,
	nombre VARCHAR (50), 
	correo VARCHAR (100), 
	rol VARCHAR (50), 
	contraseña_hash VARCHAR (50),
);

CREATE TABLE estudiantes (
	id_estudiante INT PRIMARY KEY IDENTITY,
	nombre VARCHAR (50), 
	cedula VARCHAR (10),
	correo_institucional VARCHAR (100),
	carrera VARCHAR (50), 
);

CREATE TABLE credenciales (
	id_credencial INT PRIMARY KEY IDENTITY,
	id_estudiante INT,
	tipo_credencial VARCHAR (50),
	descripcion VARCHAR (100),
	fecha_emision DATE
	FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
);

CREATE TABLE auditoria_credenciales (
	id_auditoria INT PRIMARY KEY IDENTITY,
	id_credencial INT, 
	accion VARCHAR (200),
	fecha DATE DEFAULT getdate(), 
	usuario_responsable VARCHAR(100) DEFAULT SUSER_SNAME(),
	observaciones VARCHAR (100),
	FOREIGN KEY (id_credencial) REFERENCES credenciales(id_credencial),
)


