CREATE TABLE [ods].[ODS_IES] (
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





