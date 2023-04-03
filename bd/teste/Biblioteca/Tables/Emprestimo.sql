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

