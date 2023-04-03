CREATE TABLE [Biblioteca].[usuario] (
    [CPF]            VARCHAR (11)  NOT NULL,
    [nome]           VARCHAR (100) NOT NULL,
    [Endereco]       VARCHAR (200) NOT NULL,
    [DataNascimento] DATE          NOT NULL,
    [telefone]       VARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([CPF] ASC)
);


GO

