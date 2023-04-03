CREATE TABLE [Biblioteca].[usuario] (
    [CPF]            VARCHAR (11)  NOT NULL,
    [nome]           VARCHAR (100) NOT NULL,
    [Endereco]       VARCHAR (200) NOT NULL,
    [DataNascimento] DATE          NOT NULL,
    [telefone]       VARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([CPF] ASC)
);


GO

CREATE TABLE [Biblioteca].[Emprestimo] (
    [ID]             INT          NOT NULL,
    [ID_Livro]       VARCHAR (10) NULL,
    [ID_Usuario]     VARCHAR (11) NULL,
    [DataEmprestimo] DATE         NULL,
    [DataDevolucao]  DATE         NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ID_Livro]) REFERENCES [Biblioteca].[Livro] ([CDD]),
    FOREIGN KEY ([ID_Usuario]) REFERENCES [Biblioteca].[usuario] ([CPF])
);


GO

CREATE TABLE [Biblioteca].[Livro] (
    [CDD]           VARCHAR (10)  NOT NULL,
    [Titulo]        VARCHAR (100) NOT NULL,
    [Autor]         VARCHAR (100) NOT NULL,
    [AnoPublicacao] INT           NOT NULL,
    [Editora]       VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Livro] PRIMARY KEY CLUSTERED ([CDD] ASC)
);


GO

CREATE SCHEMA [Biblioteca]
    AUTHORIZATION [dbo];


GO

GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO PUBLIC;


GO

GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO PUBLIC;


GO

