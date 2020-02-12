CREATE DATABASE MedicalGroupTarde;
USE MedicalGroupTarde;

--DDL

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (100)
);

CREATE TABLE Especialidade (
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	NomeEspecialidade VARCHAR (200)
);

CREATE TABLE Clinica (
	IdClinica INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR (200),
	RazaoSocial VARCHAR (200),
	CNPJ VARCHAR (50),
	CEP VARCHAR (12),
	Bairro VARCHAR (200),
	Complemento VARCHAR (100),
	Numero INT,
	HoraAbre TIME,
	HoraFecha TIME
);

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (100),
	Email VARCHAR (100),
	Senha VARCHAR (100),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);



CREATE TABLE Paciente(
	IdPaciente INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	NomePaciente VARCHAR (200),
	Email VARCHAR (200),
	DataNascimento DATE,
	Telefone VARCHAR (200),
	RG VARCHAR (200),
	CPF VARCHAR (200),

);

CREATE TABLE Medico (
	IdMedico INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	CRM VARCHAR (200),
	Email VARCHAR (200),
	Senha VARCHAR (200),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade),
	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Consulta (
	IdConsulta INT PRIMARY KEY IDENTITY,
	DataConsulta DATE,
	Situacao VARCHAR (200),
	Descricao VARCHAR (200),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),

);

ALTER TABLE Consulta
DROP COLUMN IdUsuario;


CREATE TABLE Endereco (
	IdEndereco	INT PRIMARY KEY IDENTITY,
	Rua	VARCHAR (100),
	Numero	INT,
	Estado VARCHAR (100),
	CEP	VARCHAR (100),
	IdPaciente	INT FOREIGN KEY REFERENCES Paciente (IdPaciente)
);


CREATE TABLE Prontuario (
	IdProntuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco),
	IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente),
	IdConsulta INT FOREIGN KEY REFERENCES Consulta (IdConsulta)
);



SELECT * FROM Prontuario;