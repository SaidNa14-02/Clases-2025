USE EduCredDB;

BEGIN TRY
	BEGIN TRANSACTION
	INSERT INTO credenciales (id_estudiante, tipo_credencial, descripcion, fecha_emision) VALUES 
	(1, 'Personal', 'Este es un carné estándar', getdate())
	DECLARE @Success_mesage NVARCHAR(4000) = ''
	COMMIT
END TRY
BEGIN CATCH 
	ROLLBACK
	DECLARE @Error_mesage NVARCHAR(4000) = ERROR_MESSAGE()
	PRINT @E




INSERT INTO estudiantes (nombre, cedula, correo_institucional, carrera) VALUES 
	('Juanito Alimaña', '1723445566', 'jalimaña@edu.ec', 'Medicina'),
	('Juanito Alimaña 2', '1723445566', 'jalimaña@edu.ec', 'Arquitectura'),
	('Juanito Alimaña la venganza', '1723445566', 'jalimaña@edu.ec', 'Humanidades')

SELECT * FROM credenciales