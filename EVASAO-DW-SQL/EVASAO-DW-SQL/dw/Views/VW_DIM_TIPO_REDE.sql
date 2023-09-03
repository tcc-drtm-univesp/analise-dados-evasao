
--Expressão de tabela com valores constantes
CREATE   VIEW DW.VW_DIM_TIPO_REDE 
WITH SCHEMABINDING AS 
SELECT TP_REDE, NO_REDE  
FROM (
	VALUES 
		(1, 'Pública'),
		(2, 'Privada')
) AS DIM_TIPO_REDE (TP_REDE, NO_REDE  )