--DML 

INSERT INTO Usuario (Nome, Email, Senha, IdTipoUsuario)
VALUES 
('Helena', 'helena@lena', '234', 3),
('Porsale', 'porsale@porsale', '888', 3),
('Ana Paula', 'ana@ana', '449', 3),
('Saulo', 'saulo@saulo', '543', 3),
('Vinicius', 'vini@vini', '123', 2),
('Isabella', 'isa@isa', '222', 2),
('Mariana', 'mari@mari', '1234', 2),
('Alexandre', 'ale@ale', '444', 2),
('Fernando', 'fer@fer', '555', 2),
('Henrique', 'henrique@hen', '777', 2);

INSERT INTO TipoUsuario (Titulo)
VALUES ('Adm'), ('Usuario'), ('Medico');

INSERT INTO Especialidade 
VALUES ('Cardiologia'), ('Pediatra'), ('Cardiologista'),
('Cirurgião'), ('Dermatologista');

INSERT INTO Clinica (NomeFantasia, RazaoSocial, CNPJ, CEP, Bairro,
Complemento, Numero, HoraAbre, HoraFecha)
VALUES ('MedGroup', 'MedGroup', '111111111', '33333333', 'Santa Cecilia',
'67', 67, '05:00:00', '23:59:59');

INSERT INTO Endereco (CEP, Rua, Numero, Complemento)
VALUES ('123456', 'Vila Isabel', 21, 'casa'),
('444444', 'Santa Cecilia', 56, 'apt 32'),
('888888', 'Belem', 88, 'casa 2'),
('777777', 'Br', 62, 'apt 23'),
('999999', 'Trancredo', 88, 'casa 5');

INSERT INTO Medico (CRM, IdEndereco, IdEspecialidade, IdClinica, IdUsuario)
VALUES ('12345678', 1, 1,1,7),
('098765', 2, 2, 1, 8),
('987654', 3, 3, 1, 9),
('876543', 4, 4, 1, 10);

INSERT INTO Prontuario (RG, CPF, Telefone, DataNascimento, IdEndereco,
IdUsuario)
VALUES ('1234567', '2345678', '987654321', '2000/05/12', 5, 5),
('345678', '678901', '912345678', '1985/09/15', 2, 6),
('876543', '987654', '93456789', '2001/07/22', 3, 7),
('765432', '098765', '9456781234', '2002/09/16', 1, 8);

INSERT INTO Situacao (Situacao)
VALUES ('Agendado'), ('Cancelada'), ('Realizada');

INSERT INTO Consulta (DataConsulta,  Descricao, IdClinica, IdMedico, IdSituacao,
IdProntuario)
VALUES ('2020/01/02', 'Bem', 1, 1, 3, 1),
('2018/02/07', 'Bem', 1, 2, 3, 2),
('2020/01/20', 'Bem', 1, 3, 3, 3),
('2020/02/07', 'Bem', 1, 1, 3, 4);

SELECT * FROM Usuario;

UPDATE Consulta
SET Situacao = 'Agendado'
WHERE IdConsulta = 3;

UPDATE Consulta
SET Descricao = 'Não se sabe'
WHERE IdConsulta = 3;

ALTER TABLE Consulta
ALTER COLUMN DataConsulta DATETIME2;


delete from Usuario where IdUsuario in (4, 5);

USE Biblioteca_Tarde;

DROP DATABASE MedicalGroupTarde;

DROP DATABASE MedicalGroupTarde;
DROP TABLE TipoUsuario;

ALTER TABLE Consulta
ADD Descricao VARCHAR (200); 

