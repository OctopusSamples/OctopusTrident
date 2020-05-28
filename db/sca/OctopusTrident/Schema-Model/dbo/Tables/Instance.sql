CREATE TABLE [dbo].[Instance]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[Name] [nvarchar] (256) NOT NULL,
[Url] [nvarchar] (1024) NOT NULL,
[ApiKey] [nvarchar] (256) NOT NULL
)
GO
ALTER TABLE [dbo].[Instance] ADD CONSTRAINT [PK_Instance] PRIMARY KEY CLUSTERED  ([Id])
GO
