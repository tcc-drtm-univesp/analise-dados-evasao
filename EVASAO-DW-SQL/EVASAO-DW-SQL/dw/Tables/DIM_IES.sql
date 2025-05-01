CREATE TABLE [DW].[DIM_IES] (
    [CO_IES]                      INT           NOT NULL,
    [NO_IES]                      VARCHAR (200) NULL,
    [SG_IES]                      VARCHAR (20)  NULL,
    [IN_CAPITAL]                  BIT           NULL,
    [TP_ORGANIZACAO_ACADEMICA]    TINYINT       NULL,
    [TP_CATEGORIA_ADMINISTRATIVA] TINYINT       NULL,
    [CO_MANTENEDORA]              INT           NULL,
    [NO_MANTENEDORA]              VARCHAR (150) NULL,
    CONSTRAINT [PK_DIM_IES] PRIMARY KEY CLUSTERED ([CO_IES] ASC)
);

