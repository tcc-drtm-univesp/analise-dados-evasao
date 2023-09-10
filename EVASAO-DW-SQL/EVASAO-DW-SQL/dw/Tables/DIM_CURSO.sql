﻿CREATE TABLE [dw].[DIM_CURSO] (
    [CO_CURSO] INT           NOT NULL,
    [NO_CURSO] VARCHAR (200) NULL,
    CONSTRAINT [PK_DIM_CURSO] PRIMARY KEY CLUSTERED ([CO_CURSO] ASC)
);

/*
INSERT INTO DW.DIM_CURSO
(CO_CURSO, NO_CURSO) 
VALUES
(0, 'Não informado')

*/