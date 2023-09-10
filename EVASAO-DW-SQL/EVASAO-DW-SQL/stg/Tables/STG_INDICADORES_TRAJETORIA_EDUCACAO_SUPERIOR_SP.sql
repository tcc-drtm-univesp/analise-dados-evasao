CREATE TABLE [stg].[STG_INDICADORES_TRAJETORIA_EDUCACAO_SUPERIOR_SP] (
    [CO_IES]                       INT           NULL,
    [NO_IES]                       VARCHAR (200) NULL,
    [TP_CATEGORIA_ADMINISTRATIVA]  TINYINT       NULL,
    [TP_ORGANIZACAO_ACADEMICA]     TINYINT       NULL,
    [CO_CURSO]                     INT           NULL,
    [NO_CURSO]                     VARCHAR (200) NULL,
    [CO_REGIAO]                    TINYINT       NULL,
    [CO_UF]                        TINYINT       NULL,
    [CO_MUNICIPIO]                 INT           NULL,
    [TP_GRAU_ACADEMICO]            TINYINT       NULL,
    [TP_MODALIDADE_ENSINO]         TINYINT       NULL,
    [CO_CINE_ROTULO]               CHAR (7)      NULL,
    [NO_CINE_ROTULO]               VARCHAR (120) NULL,
    [CO_CINE_AREA_GERAL]           TINYINT       NULL,
    [NO_CINE_AREA_GERAL]           VARCHAR (120) NULL,
    [NU_ANO_INGRESSO]              SMALLINT      NULL,
    [NU_ANO_REFERENCIA]            SMALLINT      NULL,
    [NU_PRAZO_INTEGRALIZACAO]      TINYINT       NULL,
    [NU_ANO_INTEGRALIZACAO]        SMALLINT      NULL,
    [NU_PRAZO_ACOMPANHAMENTO]      TINYINT       NULL,
    [NU_ANO_MAXIMO_ACOMPANHAMENTO] SMALLINT      NULL,
    [QT_INGRESSANTE]               INT           NULL,
    [QT_PERMANENCIA]               INT           NULL,
    [QT_CONCLUINTE]                INT           NULL,
    [QT_DESISTENCIA]               INT           NULL,
    [QT_FALECIDO]                  INT           NULL,
    [TAP]                          INT           NULL,
    [TCA]                          INT           NULL,
    [TDA]                          INT           NULL,
    [TCAN]                         INT           NULL,
    [TDAN]                         INT           NULL,
    [CO_CATALOGO]                  INT           NOT NULL
);




GO
CREATE CLUSTERED INDEX [IXC_STG_INDICADORES_TRAJETORIA_EDUCACAO_SUPERIOR_SP]
    ON [stg].[STG_INDICADORES_TRAJETORIA_EDUCACAO_SUPERIOR_SP]([CO_IES] ASC, [CO_CURSO] ASC, [CO_MUNICIPIO] ASC);



