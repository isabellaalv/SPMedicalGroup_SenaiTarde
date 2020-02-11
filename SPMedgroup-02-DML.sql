--DML 

INSERT INTO Usuario (Nome, Sexo, CPF, RG, Telefone, DataNasc, Email, Senha,
CEP, Bairro, Complemento, Numero, IdTipoUsuario)
VALUES ('Vinicius', 'Masculino', '50323919804',
'576785295', '11982954591', '1985/05/22', 'takedi@isa', '111', '11111111',
'SP', 'apt15E', 12, 2);

INSERT INTO TipoUsuario (Titulo)
VALUES ('Medico');

INSERT INTO Especialidade 
VALUES ('Cardiologia');

INSERT INTO Clinica (NomeFantasia, RazaoSocial, CNPJ, CEP, Bairro,
Complemento, Numero, HoraAbre, HoraFecha)
VALUES ('MedGroup', 'MedGroup', '111111111', '33333333', 'Santa Cecilia',
'67', 67, '05:00:00', '23:59:59');

INSERT INTO Medico (Nome, CRM, Email, Senha, IdEspecialidade, IdClinica, IdTipoUsuario)
VALUES ('Diogo', '444444444', 'diogo@', '444', 3, 1, 3 );

INSERT INTO Consulta (DataConsulta, Situacao, Descricao, IdUsuario, IdMedico)
VALUES ('2020/01/02', 'Compareceu', 'Bem', 2, 3);

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

SELECT * FROM Usuario;