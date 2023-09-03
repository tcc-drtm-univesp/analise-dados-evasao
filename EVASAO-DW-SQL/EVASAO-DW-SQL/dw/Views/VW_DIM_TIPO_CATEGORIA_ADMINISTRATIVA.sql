CREATE   VIEW DW.VW_DIM_TIPO_CATEGORIA_ADMINISTRATIVA	
WITH SCHEMABINDING AS  
	SELECT TP_CATEGORIA_ADMINISTRATIVA, NO_CATEGORIA_ADMINISTRATIVA FROM 
		(
			VALUES
				(1,'Pública Federal'),
				(2,'Pública Estadual'),
				(3,'Pública Municipal'),
				(4,'Privada com fins lucrativos'),
				(5,'Privada sem fins lucrativos'),
				(6,'Privada - Particular em sentido estrito'),
				(7,'Especial'),
				(8,'Privada comunitária'),
				(9,'Privada confessional')
		) AS DIM_TIPO_ALGUMA_COISA(TP_CATEGORIA_ADMINISTRATIVA,NO_CATEGORIA_ADMINISTRATIVA)