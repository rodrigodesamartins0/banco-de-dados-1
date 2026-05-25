SELECT 
    Clientes.ClienteNome, 
    Contas.ContaNumero,
    Movimentos.MovimentoValor
FROM Clientes, Contas, Movimentos
WHERE Clientes.ClienteCodigo=Contas.ClienteCodigo
AND Contas.ContaNumero=Movimentos.ContaNumero
GO
SELECT 
    Cl.ClienteNome, 
    Co.ContaNumero,
    Mo.MovimentoValor
FROM Clientes as Cl, Contas as Co, Movimentos as Mo
WHERE Cl.ClienteCodigo=Co.ClienteCodigo
AND Co.ContaNumero=Mo.ContaNumero