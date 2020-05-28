CREATE TABLE [dbo].[Release]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[ProjectId] [int] NOT NULL,
[Version] [nvarchar] (256) NOT NULL,
[Created] [datetime2] NOT NULL
)
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [PK_Release] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [FK_Release_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id])
GO
