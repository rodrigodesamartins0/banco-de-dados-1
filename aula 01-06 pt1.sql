--TOP OU LIMIT
SELECT TOP 10 ClienteNome, ClienteRendaAnual FROM Clientes
ORDER BY ClienteRendaAnual DESC, ClienteNome

--LIKE
SELECT DISTINCT ClienteNome FROM Clientes
WHERE ClienteNome NOT LIKE '%y%'

--CASE WHEN
SELECT ClienteNome, ClienteSexo, 
CASE 
    WHEN ClienteNome LIKE '%a' 
        AND ClienteEstadoCivil NOT IN ('C') THEN 'Feminino'
    WHEN ClienteNome LIKE '%o' THEN 'Masculino'
    ELSE 'NB' 
END as Sexo, 
CASE 
    WHEN ClienteEstadoCivil IN ('C', 'U') THEN 'Casado'
    WHEN ClienteEstadoCivil NOT IN ('C') THEN 'Solteiro'
    ELSE 'NN' END EstadoCivilDescricao

FROM Clientes