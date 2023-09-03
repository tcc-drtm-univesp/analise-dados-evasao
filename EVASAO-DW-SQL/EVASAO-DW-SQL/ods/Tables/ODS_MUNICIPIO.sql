﻿CREATE TABLE [ods].[ODS_MUNICIPIO] (
    [CO_MUNICIPIO]    INT           NOT NULL,
    [NO_MUNICIPIO]    VARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [CO_MICRORREGIAO] INT           NULL,
    CONSTRAINT [PK_ODS_MUNICIPIO] PRIMARY KEY CLUSTERED ([CO_MUNICIPIO] ASC)
);
