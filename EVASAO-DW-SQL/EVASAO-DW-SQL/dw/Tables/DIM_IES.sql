CREATE TABLE [dw].[DIM_IES] (
    [CO_IES]                      INT           NOT NULL,
    [NO_IES]                      VARCHAR (200) NULL,
    [SG_IES]                      VARCHAR (20)  NULL,
    [IN_CAPITAL_IES]              BIT           NULL,
    [TP_ORGANIZACAO_ACADEMICA]    TINYINT       NULL,
    [TP_CATEGORIA_ADMINISTRATIVA] TINYINT       NULL,
    [CO_MANTENEDORA]              INT           NOT NULL,
    [NO_MANTENEDORA]              VARCHAR (100) NULL,
    CONSTRAINT [PK_DIM_IES] PRIMARY KEY CLUSTERED ([CO_IES] ASC)
);
/*

INSERT INTO DW.DIM_IES (
CO_IES
, NO_IES
, SG_IES
, IN_CAPITAL_IES
, TP_ORGANIZACAO_ACADEMICA
, TP_CATEGORIA_ADMINISTRATIVA
, CO_MANTENEDORA
, NO_MANTENEDORA
)values(0,'Não informado', 'NI', 0, 0,0,0,'Não informado')

*/


