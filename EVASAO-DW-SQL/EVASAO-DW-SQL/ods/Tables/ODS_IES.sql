CREATE TABLE [ods].[ODS_IES] (
    [CO_IES]                      INT           NULL,
    [NO_IES]                      VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [SG_IES]                      VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [NU_ANO_CENSO]                INT           NULL,
    [CO_MUNICIPIO_IES]            INT           NULL,
    [IN_CAPITAL_IES]              INT           NULL,
    [TP_ORGANIZACAO_ACADEMICA]    INT           NULL,
    [TP_CATEGORIA_ADMINISTRATIVA] INT           NULL,
    [CO_MANTENEDORA]              INT           NULL,
    [DS_ENDERECO_IES]             VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [DS_NUMERO_ENDERECO_IES]      VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [DS_COMPLEMENTO_ENDERECO_IES] VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [NO_BAIRRO_IES]               VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [NU_CEP_IES]                  INT           NULL,
    [NO_ORGANIZACAO_ACADEMICA]    AS            (case when [TP_ORGANIZACAO_ACADEMICA]=(1) then 'Universidade' when [TP_ORGANIZACAO_ACADEMICA]=(2) then 'Centro Universitário' when [TP_ORGANIZACAO_ACADEMICA]=(3) then 'Faculdade' when [TP_ORGANIZACAO_ACADEMICA]=(4) then 'Instituto Federal de Educação, Ciência e Tecnologia' when [TP_ORGANIZACAO_ACADEMICA]=(5) then 'Centro Federal de Educação Tecnológica'  end),
    [NO_CATEGORIA_ADMINISTRATIVA] AS            (case when [TP_CATEGORIA_ADMINISTRATIVA]=(1) then 'Pública Federal' when [TP_CATEGORIA_ADMINISTRATIVA]=(2) then 'Pública Estadual' when [TP_CATEGORIA_ADMINISTRATIVA]=(3) then 'Pública Municipal' when [TP_CATEGORIA_ADMINISTRATIVA]=(4) then 'Privada com fins lucrativos' when [TP_CATEGORIA_ADMINISTRATIVA]=(5) then 'Privada sem fins lucrativos' when [TP_CATEGORIA_ADMINISTRATIVA]=(7) then 'Especial' when [TP_CATEGORIA_ADMINISTRATIVA]=(8) then 'Privada comunitária' when [TP_CATEGORIA_ADMINISTRATIVA]=(9) then 'Privada confessional'  end)
);

