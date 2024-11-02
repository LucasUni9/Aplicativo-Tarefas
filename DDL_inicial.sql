USE uni9_vm_grupo04;

CREATE TABLE Usuarios 
( 
 IdUsuarios INT PRIMARY KEY NOT NULL auto_increment, 
 nome VARCHAR(40) NOT NULL,
 Telefones INT,  
 email VARCHAR(40) 
); 

CREATE TABLE Tarefas 
( 
 idTarefas INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  
 nomesTarefas VARCHAR(40),  
 datasTarefas DATE,  
 DescricoesTarefaS VARCHAR(200) NOT NULL,  
 importancias VARCHAR(15),  
 idUsuarios INT  
); 

CREATE TABLE tarefas_Status 
( 
idtarefas_Status INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 status VARCHAR(20)  
); 

CREATE TABLE Rel 
( 
 idTarefas INT,  
 idtarefas_Status INT, 
 PRIMARY KEY (idTarefas, idtarefas_StatuS)
); 

ALTER TABLE Tarefas 
ADD FOREIGN KEY(idUsuarios) REFERENCES Usuarios (idUsuarios);
ALTER TABLE Rel 
ADD FOREIGN KEY(idTarefas) REFERENCES Tarefas (idTarefas);
ALTER TABLE Rel 
ADD FOREIGN KEY(idtarefas_Status) REFERENCES tarefas_Status (idtarefas_Status);
