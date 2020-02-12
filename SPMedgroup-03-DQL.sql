-- DQL 

SELECT * FROM Usuario;
SELECT * FROM Medico;
SELECT * FROM Especialidade;
SELECT * FROM Consulta;
SELECT * FROM Prontuario;
SELECT * FROM Paciente;
SELECT * FROM Endereco;
SELECT * FROM TipoUsuario;
SELECT * FROM Clinica;

-- 11 Mostrar quantidades de usuário 

SELECT COUNT(IdUsuario) AS Quantidade_de_Usuarios FROM Usuario;
 -- Data Nascimento
SELECT CONVERT(VARCHAR(10), DataNascimento, 110) AS [MM/DD/YY]
FROM Paciente;


-- 12
--Medico de determinada especialidade
CREATE PROCEDURE EspecialidadedoMedico
@ID INT
AS
SELECT Medico.CRM, Medico.Nome, Especialidade.NomeEspecialidade FROM Medico
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
WHERE Especialidade.IdEspecialidade = @ID
EXECUTE EspecialidadedoMedico 2 

-- retornar idade

CREATE PROCEDURE RetornarIdade
@ID INT
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) AS Idade
FROM Paciente
WHERE IdPaciente = @ID

EXECUTE RetornarIdade 1


-- ver consultas
SELECT Consulta.DataConsulta, Consulta.Situacao, Medico.Nome AS NomeMedico,
Prontuario.Nome AS NomePaciente FROM Consulta
INNER JOIN Prontuario ON Consulta.IdConsulta = Prontuario.IdConsulta
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico







