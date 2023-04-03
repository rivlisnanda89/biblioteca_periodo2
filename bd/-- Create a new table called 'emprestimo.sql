-- Create a new table called 'emprestimo' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.emprestimo', 'U') IS NOT NULL

-- Create the table in the specified schema
CREATE TABLE emprestimo
(
    emprestimoId INT NOT NULL PRIMARY KEY, -- primary key column
    Id_livro INT FOREIGN KEY REFERENCES livro(id),
    Id_usuario INT FOREIGN KEY REFERENCES usuario(id)
    -- specify more columns here
);
GO