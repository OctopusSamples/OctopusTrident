CREATE TABLE [dbo].[Project]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [FK_Project_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
