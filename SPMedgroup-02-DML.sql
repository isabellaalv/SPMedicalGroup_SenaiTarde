--DML 

INSERT INTO Usuario (Nome, Email, Senha, IdTipoUsuario)
VALUES ('Isabella', 'isa@isa', '333', 2);



INSERT INTO TipoUsuario (Titulo)
VALUES ('Medico');

INSERT INTO Especialidade 
VALUES ('clinico');

INSERT INTO Clinica (NomeFantasia, RazaoSocial, CNPJ, CEP, Bairro,
Complemento, Numero, HoraAbre, HoraFecha)
VALUES ('MedGroup', 'MedGroup', '111111111', '33333333', 'Santa Cecilia',
'67', 67, '05:00:00', '23:59:59');

INSERT INTO Medico (Nome, CRM, Email, Senha, IdEspecialidade, 
IdClinica, IdTipoUsuario)
VALUES ('Vini', '9999999', 'vini@vini', '88888888', 2, 1, 3 );

INSERT INTO Consulta (DataConsulta, Situacao, Descricao,
IdUsuario, IdMedico)
VALUES ('2020/02/05', 'Compareceu', 'Bem', 1, 1);

INSERT INTO Endereco(Rua, Numero, Estado, CEP, IdPaciente)
VALUES ('Rua Estado de Israel','240','São Paulo - SP','04022000',1);
SELECT * FROM Endereco;

INSERT INTO Paciente (IdTipoUsuario, NomePaciente,Email ,DataNascimento, 
Telefone, RG, CPF)
VALUES (2, 'Camila', 'cami@cami', '1986/03/05', '112299111', '1122219911',
'111199111');

INSERT INTO Prontuario (Nome, IdEndereco, IdPaciente, IdConsulta)
VALUES ('Clara', 4, 1, 4);



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

