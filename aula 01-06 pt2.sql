SELECT ClienteNome
FROM Clientes WHERE ClienteCodigo IN 
(
    SELECT ClienteCodigo
    FROM Clientes
    WHERE ClienteBairro = 'Bom Retiro'
    AND ClienteRendaAnual > 60000
)


SELECT * FROM Contas
WHERE EXISTS (

SELECT * FROM CartaoCredito
WHERE CartaoCredito.ContaNumero = Contas.ContaNumero
AND Contas.ClienteCodigo = CartaoCredito.ClienteCodigo
)