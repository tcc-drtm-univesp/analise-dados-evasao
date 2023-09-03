CREATE   VIEW DW.VW_DIM_TIPO_ORGANIZACAO_ACADEMICA	
WITH SCHEMABINDING AS
	SELECT TP_ORGANIZACAO_ACADEMICA,NO_ORGANIZACAO_ACADEMICA FROM 
		(
			VALUES
				(1,'Universidade'),
				(2,'Centro Universitário'),
				(3,'Faculdade'),
				(4,'Instituto Federal de Educação, Ciência e Tecnologia'),
				(5,'Centro Federal de Educação Tecnológica')
			) AS DIM_TIPO_ALGUMA_COISA	(TP_ORGANIZACAO_ACADEMICA,NO_ORGANIZACAO_ACADEMICA)