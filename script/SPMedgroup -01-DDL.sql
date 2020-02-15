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

CREATE TABLE Endereco (
	IdEndereco INT PRIMARY KEY IDENTITY,
	CEP VARCHAR (15),
	Rua VARCHAR (200),
	Numero INT,
	Complemento VARCHAR (200)
);

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (100),
	Email VARCHAR (100),
	Senha VARCHAR (100),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Situacao (
	IdSituacao INT PRIMARY KEY IDENTITY,
	Situacao VARCHAR (200)
);

ALTER TABLE Medico
DROP COLUMN Nome;
CREATE TABLE Medico (
	IdMedico INT PRIMARY KEY IDENTITY,
	CRM VARCHAR (200),
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade),
	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
);

CREATE TABLE Consulta (
	IdConsulta INT PRIMARY KEY IDENTITY,
	DataConsulta DATE,
	Descricao VARCHAR (200),
	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	IdSituacao INT FOREIGN KEY REFERENCES Situacao (IdSituacao),
	IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
	IdProntuario INT FOREIGN KEY REFERENCES Prontuario (IdProntuario)

);

CREATE TABLE Prontuario (
	IdProntuario INT PRIMARY KEY IDENTITY,
	RG VARCHAR (10),
	CPF VARCHAR (12),
	Telefone VARCHAR (16),
	DataNascimento DATE,
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);