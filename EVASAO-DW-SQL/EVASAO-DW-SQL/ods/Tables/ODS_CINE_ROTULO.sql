﻿CREATE TABLE [ods].[ODS_CINE_ROTULO] (
    [CO_CINE_ROTULO]         CHAR (7)      NOT NULL,
    [NO_CINE_ROTULO]         VARCHAR (120) NULL,
    [CO_CINE_AREA_DETALHADA] SMALLINT      NULL,
    CONSTRAINT [PK_CINE_ROTULO] PRIMARY KEY CLUSTERED ([CO_CINE_ROTULO] ASC)
);



