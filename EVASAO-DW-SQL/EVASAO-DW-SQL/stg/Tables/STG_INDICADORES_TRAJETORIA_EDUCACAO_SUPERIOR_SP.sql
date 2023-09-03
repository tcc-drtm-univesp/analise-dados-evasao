CREATE TABLE [stg].[STG_INDICADORES_TRAJETORIA_EDUCACAO_SUPERIOR_SP] (
    [Código_da_Instituição]                                              INT           NULL,
    [Nome_da_Instituição]                                                VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Categoria_Administrativa]                                           INT           NULL,
    [Organização_Acadêmica]                                              INT           NULL,
    [Código_do_Curso_de_Graduação]                                       INT           NULL,
    [Nome_do_Curso_de_Graduação]                                         VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Código_da_Região_Geográfica_do_Curso]                               INT           NULL,
    [Código_da_Unidade_Federativa_do_Curso]                              INT           NULL,
    [Código_do_Município_do_Curso]                                       INT           NULL,
    [Grau_Acadêmico]                                                     INT           NULL,
    [Modalidade_de_Ensino]                                               INT           NULL,
    [Código_da_área_do_Curso_segundo_a_classificação_CINE_BRASIL]        VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Nome_da_área_do_Curso_segundo_a_classificação_CINE_BRASIL]          VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Código_da_Grande_Área_do_Curso_segundo_a_classificação_CINE_BRASIL] INT           NULL,
    [Nome_da_Grande_Área_do_Curso_segundo_a_classificação_CINE_BRASIL]   VARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Ano_de_Ingresso]                                                    INT           NULL,
    [Ano_de_Referência]                                                  INT           NULL,
    [Prazo_de_Integralização_em_Anos]                                    INT           NULL,
    [Ano_de_Integralização_do_Curso]                                     INT           NULL,
    [Prazo_de_Acompanhamento_do_Curso_em_anos]                           INT           NULL,
    [Ano_Máximo_de_Acompanhamento_do_Curso]                              INT           NULL,
    [Quantidade_de_Ingressantes_no_Curso]                                INT           NULL,
    [Quantidade_de_Permanência_no_Curso_no_ano_de_referência]            INT           NULL,
    [Quantidade_de_Concluintes_no_Curso_no_ano_de_referência]            INT           NULL,
    [Quantidade_de_Desistência_no_Curso_no_ano_de_referência]            INT           NULL,
    [Quantidade_de_Falecimentos_no_Curso_no_ano_de_referência]           INT           NULL,
    [Taxa_de_Permanência_TAP]                                            FLOAT (53)    NULL,
    [Taxa_de_Conclusão_Acumulada_TCA]                                    FLOAT (53)    NULL,
    [Taxa_de_Desistência_Acumulada_TDA]                                  FLOAT (53)    NULL,
    [Taxa_de_Conclusão_Anual_TCAN]                                       FLOAT (53)    NULL,
    [Taxa_de_Desistência_Anual_TDAN]                                     FLOAT (53)    NULL,
    [CO_CATALOGO]                                                        INT           NOT NULL
);


GO
CREATE CLUSTERED INDEX [IXC_STG_INDICADORES_TRAJETORIA_EDUCACAO_SUPERIOR_SP]
    ON [stg].[STG_INDICADORES_TRAJETORIA_EDUCACAO_SUPERIOR_SP]([Código_da_Instituição] ASC, [Código_do_Curso_de_Graduação] ASC, [Código_do_Município_do_Curso] ASC);

