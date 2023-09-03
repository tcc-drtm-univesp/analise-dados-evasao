﻿
CREATE   VIEW DW.VW_DIM_TIPO_GRAU_ACADEMICO			
WITH SCHEMABINDING AS 
	SELECT TP_GRAU_ACADEMICO, NO_GRAU_ACADEMICO FROM 
		(
			VALUES
				(1,'Bacharelado'),
				(2,'Licenciatura'),
				(3,'Tecnológico'),
				(4,'Bacharelado e Licenciatura')
		) AS DIM_TIPO_ALGUMA_COISA(TP_GRAU_ACADEMICO,NO_GRAU_ACADEMICO)