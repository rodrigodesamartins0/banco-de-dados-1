--TOP OU LIMIT
SELECT TOP 10 ClienteNome, ClienteRendaAnual FROM Clientes
ORDER BY ClienteRendaAnual DESC, ClienteNome

--LIKE
SELECT DISTINCT ClienteNome FROM Clientes
WHERE ClienteNome NOT LIKE '%y%'

--CASE WHEN
SELECT ClienteNome, ClienteSexo, 
CASE 
    WHEN ClienteNome LIKE '%a' THEN 'Feminino'
    WHEN ClienteNome LIKE '%o' THEN 'Masculino'
    ELSE 'NB' 
END as Sexo
FROM Clientes