CREATE TABLE [dbo].[posts] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [title] NVARCHAR(100) NOT NULL,
    [content] NVARCHAR(MAX) NOT NULL,
    [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
    [updated_at] DATETIME
);
