CREATE TABLE [ods].[ODS_DADOS_FLUXO] (
    [NU_ANO_REFERENCIA]            SMALLINT       NULL,
    [CO_IES]                       INT            NULL,
    [CO_CURSO]                     INT            NULL,
    [CO_MUNICIPIO]                 INT            NULL,
    [NU_ANO_INGRESSO]              SMALLINT       NULL,
    [NU_PRAZO_INTEGRALIZACAO]      TINYINT        NULL,
    [NU_ANO_INTEGRALIZACAO]        SMALLINT       NULL,
    [NU_PRAZO_ACOMPANHAMENTO]      TINYINT        NULL,
    [NU_ANO_MAXIMO_ACOMPANHAMENTO] SMALLINT       NULL,
    [QT_INGRESSANTE]               INT            NULL,
    [QT_PERMANENCIA]               INT            NULL,
    [QT_CONCLUINTE]                INT            NULL,
    [QT_DESISTENCIA]               INT            NULL,
    [QT_FALECIDO]                  INT            NULL,
    [VL_TAP]                       NUMERIC (4, 3) NULL,
    [VL_TCA]                       NUMERIC (4, 3) NULL,
    [VL_TDA]                       NUMERIC (4, 3) NULL,
    [VL_TCAN]                      NUMERIC (4, 3) NULL,
    [VL_TDAN]                      NUMERIC (4, 3) NULL,
    [CO_CATALOGO]                  INT            NOT NULL
);




GO
CREATE CLUSTERED INDEX [IXC_ODS_DADOS_FLUXO]
    ON [ods].[ODS_DADOS_FLUXO]([NU_ANO_REFERENCIA] ASC, [CO_IES] ASC, [CO_CURSO] ASC, [CO_MUNICIPIO] ASC, [NU_ANO_INGRESSO] ASC);



