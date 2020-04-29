CREATE TABLE [dbo].[Space]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InstanceId] [int] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Space] ADD CONSTRAINT [PK_Space] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Space] ADD CONSTRAINT [FK_Space_Instance] FOREIGN KEY ([InstanceId]) REFERENCES [dbo].[Instance] ([Id])
GO
