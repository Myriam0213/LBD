alter table Name
Add Constraint unique_username Unique(username)

ALTER TABLE Identidad
ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

ALTER TABLE Persona
ADD CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes');








ALTER TABLE nombreEsquema.nombreTabla
ADD CONSTRAINT FK_nombreRestriccion FOREIGN KEY(nombreColumna1)
REFERENCES nombreEsquema.otraTabla (nombreColumna1)






