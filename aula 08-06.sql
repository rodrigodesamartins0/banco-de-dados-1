--cast e convert

SELECT ClienteNome, 
'R$' +  CAST (ClienteRendaAnual AS CHAR(16))
FROM Clientes