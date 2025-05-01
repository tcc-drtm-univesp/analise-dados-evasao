CREATE TABLE [ods].[ODS_CURSO] (
    [CO_CURSO]             INT           NOT NULL,
    [NO_CURSO]             VARCHAR (200) NULL,
    [TP_DIMENSAO]          INT           NULL,
    [TP_REDE]              INT           NULL,
    [CO_AREA]              CHAR (7)      NULL,
    [TP_GRAU_ACADEMICO]    INT           NULL,
    [FL_GRATUITO]          INT           NULL,
    [TP_MODALIDADE_ENSINO] INT           NULL,
    [TP_NIVEL_ACADEMICO]   INT           NULL,
    CONSTRAINT [PK_ODS_CURSO] PRIMARY KEY CLUSTERED ([CO_CURSO] ASC)
);

