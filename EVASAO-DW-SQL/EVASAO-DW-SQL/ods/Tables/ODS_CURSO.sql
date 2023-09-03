CREATE TABLE [ods].[ODS_CURSO] (
    [CO_CURSO]             INT            NULL,
    [NO_CURSO]             VARCHAR (200)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [CO_MUNICIPIO]         INT            NULL,
    [IN_CAPITAL]           INT            NULL,
    [TP_DIMENSAO]          INT            NULL,
    [TP_REDE]              INT            NULL,
    [CO_IES]               INT            NULL,
    [CO_CINE_ROTULO]       VARCHAR (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [TP_GRAU_ACADEMICO]    INT            NULL,
    [IN_GRATUITO]          INT            NULL,
    [TP_MODALIDADE_ENSINO] INT            NULL,
    [TP_NIVEL_ACADEMICO]   INT            NULL
);


GO
CREATE CLUSTERED INDEX [ixc_ods_curso]
    ON [ods].[ODS_CURSO]([CO_CURSO] ASC, [CO_MUNICIPIO] ASC, [CO_IES] ASC);

