CREATE TABLE Paciente (
  id INT NOT NULL auto_increment PRIMARY KEY,
  nombre_paciente VARCHAR(45) NOT NULL,
  apellido_paciente VARCHAR(45) NOT NULL,
  nacionalidad VARCHAR(45) NOT NULL
  )ENGINE=InnoDB;