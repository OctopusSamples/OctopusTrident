CREATE TABLE [dbo].[Environment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
ALTER TABLE [dbo].[Environment] ADD CONSTRAINT [PK_Environment] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[Environment] ADD CONSTRAINT [FK_Environment_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
