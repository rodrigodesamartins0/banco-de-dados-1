SELECT 
AVG(ClienteRendaAnual) as Media,
MAX(ClienteRendaAnual) as Maior,
MIN(ClienteRendaAnual) as Menor,
SUM(ClienteRendaAnual) as Total,
COUNT (ClienteCodigo) as Quantidade,
COUNT (*) as Quantidade2,
COUNT (DISTINCT ClienteBairro) AS Bairros,
COUNT (ClienteBairro) AS Bairros2
FROM Clientes