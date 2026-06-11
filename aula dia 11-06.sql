SELECT 
CAST( ClienteNome AS CHAR(20))
+ ClienteNome
FROM Clientes

SELECT CONCAT(ClienteNome, ' ', ClienteSobrenome) 
AS NomeCompleto FROM Clientes

SELECT COALESCE (ClienteNome, ClienteSobrenome) 
AS NomeCompleto FROM Clientes

SELECT ISNULL (ClienteNome, 'NN') 
AS NomeCompleto FROM Clientes

SELECT ClienteCPF, SUBSTRING(ClienteCPF,1,3) AS CPF_3_CARACTERES,
SUBSTRING(ClienteCPF,13,2)  AS CPF_2_ULTIMOS
FROM Clientes

SELECT ClienteEmail, PATINDEX('%@%',ClienteEmail) AS POSICAO
FROM Clientes

SELECT position = PATINDEX('%[^ 0-9A-Za-z]%', 'Por favar encontre a posição do ponto de exclamação!'),
positon_static =  PATINDEX('%!%', 'Por favar encontre a posição do ponto de exclamação!'); 