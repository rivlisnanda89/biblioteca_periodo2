CREATE TABLE [Biblioteca].[Livro] (
    [CDD]           VARCHAR (10)  NOT NULL,
    [Titulo]        VARCHAR (100) NOT NULL,
    [Autor]         VARCHAR (100) NOT NULL,
    [AnoPublicacao] INT           NOT NULL,
    [Editora]       VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Livro] PRIMARY KEY CLUSTERED ([CDD] ASC)
);


GO

