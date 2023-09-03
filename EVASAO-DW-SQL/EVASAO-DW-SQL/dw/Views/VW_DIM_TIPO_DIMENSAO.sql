
CREATE   VIEW DW.VW_DIM_TIPO_DIMENSAO 
WITH SCHEMABINDING AS 
SELECT TP_DIMENSAO, NO_DIMENSAO  
FROM (
	VALUES 
		(1, 'Cursos presenciais ofertados no Brasil'),
		(2, 'Cursos a distância ofertados no Brasil'),
		(3, 'Cursos a distância com dimensão de dados somente a nível Brasil'),
		(4, 'Cursos a distância ofertados por instituições brasileiras no exterior')
) AS DIM_TIPO_DIMENSAO (TP_DIMENSAO, NO_DIMENSAO  )