
--RESTRICCIONES

ALTER TABLE Name
Add Constraint unique_username Unique(username)

ALTER TABLE Identidad
ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

ALTER TABLE Persona
ADD CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Monterrey');

ALTER TABLE Persons
ADD CHECK (P_Id>0)

ALTER TABLE proyectoFechaInicio
ADD CONSTRAINT p_fch_ck CHECK (proyectoFechaInicio<=to_date('2009-09-16','YYYY-MM-DD'))




--LLAVES FORANEAS

ALTER TABLE NombreC.Cliente
ADD CONSTRAINT FK_nombreRestriccion FOREIGN KEY(nombreColumna1)
REFERENCES nombreEsquema.otraTabla (nombreColumna1)






