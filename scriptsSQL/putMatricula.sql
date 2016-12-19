DELIMITER //
CREATE PROCEDURE putMatricula 
(
    IN ID_ALUMNO_MATRICULA INT,
    IN ID_ASIGNATURA_MATRICULA INT,
    IN FECHA_INICIO_MATRICULA DATE,
    IN FECHA_FIN_MATRICULA DATE
)
BEGIN 
IF NOT EXISTS 
(
    SELECT * FROM Matricula WHERE Id_alumno = ID_ALUMNO_MATRICULA AND Id_asignatura = ID_ASIGNATURA_MATRICULA
)
THEN
INSERT INTO Matricula
VALUES 
(
    ID_ALUMNO_MATRICULA,
    ID_ASIGNATURA_MATRICULA,
    FECHA_INICIO_MATRICULA,
    FECHA_FIN_MATRICULA
);
SELECT "201" AS code;
ELSE
UPDATE Matricula
SET 
    Id_alumno = ID_ALUMNO_MATRICULA,
    Id_asignatura = ID_ASIGNATURA_MATRICULA,
    fecha_inicio = FECHA_INICIO_MATRICULA,
    fecha_fin = FECHA_FIN_MATRICULA
WHERE Id_alumno = ID_ALUMNO_MATRICULA AND Id_asignatura = ID_ASIGNATURA_MATRICULA
;
SELECT "200" AS code;
END IF;
END //
DELIMITER ;