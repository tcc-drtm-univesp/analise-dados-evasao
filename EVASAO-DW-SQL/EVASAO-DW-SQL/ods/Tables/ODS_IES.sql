﻿CREATE TABLE [ods].[ODS_IES] (
    [CO_IES]                      INT           NULL,
    [NO_IES]                      VARCHAR (200) NULL,
    [SG_IES]                      VARCHAR (20)  NULL,
    [NU_ANO_CENSO]                SMALLINT      NULL,
    [CO_MUNICIPIO]                INT           NULL,
    [IN_CAPITAL]                  BIT           NULL,
    [TP_ORGANIZACAO_ACADEMICA]    TINYINT       NULL,
    [TP_CATEGORIA_ADMINISTRATIVA] TINYINT       NULL,
    [CO_MANTENEDORA]              INT           NULL,
    [DS_ENDERECO_IES]             VARCHAR (255) NULL,
    [DS_NUMERO_ENDERECO_IES]      VARCHAR (20)  NULL,
    [DS_COMPLEMENTO_ENDERECO_IES] VARCHAR (150) NULL,
    [NO_BAIRRO_IES]               VARCHAR (100) NULL,
    [NU_CEP_IES]                  INT           NULL,
    [NO_CATEGORIA_ADMINISTRATIVA] AS            (case when [TP_CATEGORIA_ADMINISTRATIVA]=(1) then 'Pública Federal' when [TP_CATEGORIA_ADMINISTRATIVA]=(2) then 'Pública Estadual' when [TP_CATEGORIA_ADMINISTRATIVA]=(3) then 'Pública Municipal' when [TP_CATEGORIA_ADMINISTRATIVA]=(4) then 'Privada com fins lucrativos' when [TP_CATEGORIA_ADMINISTRATIVA]=(5) then 'Privada sem fins lucrativos' when [TP_CATEGORIA_ADMINISTRATIVA]=(7) then 'Especial' when [TP_CATEGORIA_ADMINISTRATIVA]=(8) then 'Privada comunitária' when [TP_CATEGORIA_ADMINISTRATIVA]=(9) then 'Privada confessional'  end),
    [NO_ORGANIZACAO_ACADEMICA]    AS            (case when [TP_ORGANIZACAO_ACADEMICA]=(1) then 'Universidade' when [TP_ORGANIZACAO_ACADEMICA]=(2) then 'Centro Universitário' when [TP_ORGANIZACAO_ACADEMICA]=(3) then 'Faculdade' when [TP_ORGANIZACAO_ACADEMICA]=(4) then 'Instituto Federal de Educação, Ciência e Tecnologia' when [TP_ORGANIZACAO_ACADEMICA]=(5) then 'Centro Federal de Educação Tecnológica'  end)
);

INSERT INTO ODS.ODS_IES(
  CO_IES
, NO_IES
, SG_IES
, TP_ORGANIZACAO_ACADEMICA
, TP_CATEGORIA_ADMINISTRATIVA
, CO_MANTENEDORA
, DS_ENDERECO
, TP_REDE
)
SELECT 
  CO_IES
, NO_IES
, SG_IES
,  CASE 
    WHEN NO_ORGANIZACAO_ACADEMICA = 'Universidade'											THEN   1
    WHEN NO_ORGANIZACAO_ACADEMICA = 'Centro Universitário'									THEN   2
    WHEN NO_ORGANIZACAO_ACADEMICA = 'Faculdade'												THEN   3
    WHEN NO_ORGANIZACAO_ACADEMICA = 'Instituto Federal de Educação, Ciência e Tecnologia'	THEN   4                            
    WHEN NO_ORGANIZACAO_ACADEMICA = 'Centro Federal de Educação Tecnológica'				THEN   5
    ELSE 0 
  END AS TP_ORGANIZACAO_ACADEMICA
,  CASE 
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Pública Federal'									THEN   1
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Pública Estadual'									THEN   2
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Pública Municipal'									THEN   3
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Privada com fins lucrativos'						THEN   4                            
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Privada sem fins lucrativos'						THEN   5
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Privada - Particular em sentido estrito'			THEN   6
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Especial'											THEN   7
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Privada comunitária'								THEN   8                            
	WHEN NO_CATEGORIA_ADMINISTRATIVA = 'Privada confessional'								THEN   9
    ELSE 0 
  END AS TP_CATEGORIA_ADMINISTRATIVA
, CO_MANTENEDORA
, DS_ENDERECO
,  CASE 
    WHEN NO_REDE = 'Publica'																THEN   1
    WHEN NO_REDE = 'Privada'																THEN   2
    ELSE 0 
  END AS TP_REDE
FROM STG.STG_IES



