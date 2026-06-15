SELECT ClienteEmail, PATINDEX('%@%',ClienteEmail) AS POSICAO,
SUBSTRING(ClienteEmail,1,PATINDEX('%@%',ClienteEmail)-1)
FROM Clientes

SELECT ClienteNome, CartaoCodigo FROM 
Clientes 
    LEFT JOIN CartaoCredito
        ON (Clientes.ClienteCodigo=CartaoCredito.ClienteCodigo)
    RIGHT JOIN Contas 
        ON (Clientes.ClienteCodigo=Contas.ClienteCodigo)