CREATE TABLE Ficha (
id INT NOT NULL auto_increment PRIMARY KEY,
id_doctor INT NOT NULL,
id_paciente INT NOT NULL,
FOREIGN KEY (id_doctor) REFERENCES Doctor (id),
FOREIGN KEY (id_paciente) REFERENCES Paciente (id)
)ENGINE=InnoDB;