CREATE TABLE [dw].[DIM_REGIAO] (
    [CO_MUNICIPIO]    INT           NOT NULL,
    [NO_MUNICIPIO]    VARCHAR (100) NULL,
    [CO_MICRORREGIAO] INT           NOT NULL,
    [NO_MICRORREGIAO] VARCHAR (100) NULL,
    [CO_MESORREGIAO]  SMALLINT      NOT NULL,
    [NO_MESORREGIAO]  VARCHAR (100) NULL,
    [CO_UF]           TINYINT       NOT NULL,
    [NO_UF]           VARCHAR (30)  NULL,
    [SG_UF]           CHAR (2)      NULL,
    [CO_REGIAO]       TINYINT       NOT NULL,
    [NO_REGIAO]       VARCHAR (20)  NULL,
    CONSTRAINT [PK_DIM_REGIAO] PRIMARY KEY CLUSTERED ([CO_MUNICIPIO] ASC)
);


/*
insert into dw.DIM_REGIAO
(
CO_MUNICIPIO
, NO_MUNICIPIO
, CO_MICRORREGIAO
, NO_MICRORREGIAO
, CO_MESORREGIAO
, NO_MESORREGIAO
, CO_UF
, NO_UF
, SG_UF
, CO_REGIAO
, NO_REGIAO
)
values
(0,'Não informado',0,'Não informado',0,'Não informado',0,'Não informado','NI',0,'Não informado'),
(1, 'EAD', 1, 'EAD', 1,'EAD',1,'EAD', 'EAD', 1, 'EAD')
*/
