CREATE TABLE [ods].[ODS_DADOS_FLUXO] (
    [NU_ANO_CENSO]                 INT        NULL,
    [CO_IES]                       INT        NULL,
    [CO_CURSO]                     INT        NULL,
    [CO_MUNICIPIO]                 INT        NULL,
    [NU_ANO_INGRESSO]              INT        NULL,
    [NU_PRAZO_INTEGRALIZACAO]      INT        NULL,
    [NU_ANO_INTEGRALIZACAO]        INT        NULL,
    [NU_PRAZO_ACOMPANHAMENTO]      INT        NULL,
    [NU_ANO_MAXIMO_ACOMPANHAMENTO] INT        NULL,
    [QT_INGRESSANTE]               INT        NULL,
    [QT_PERMANENCIA]               INT        NULL,
    [QT_CONCLUINTE]                INT        NULL,
    [QT_DESISTENCIA]               INT        NULL,
    [QT_FALECIDO]                  INT        NULL,
    [VL_TAP]                       FLOAT (53) NULL,
    [VL_TCA]                       FLOAT (53) NULL,
    [VL_TDA]                       FLOAT (53) NULL,
    [VL_TCAN]                      FLOAT (53) NULL,
    [VL_TDAN]                      FLOAT (53) NULL,
    [CO_CATALOGO]                  INT        NOT NULL
);


GO
CREATE CLUSTERED INDEX [IXC_ODS_DADOS_FLUXO]
    ON [ods].[ODS_DADOS_FLUXO]([NU_ANO_CENSO] ASC, [CO_IES] ASC, [CO_CURSO] ASC, [CO_MUNICIPIO] ASC, [NU_ANO_INGRESSO] ASC);

