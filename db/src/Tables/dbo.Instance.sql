CREATE TABLE [dbo].[Instance]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Url] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ApiKey] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instance] ADD CONSTRAINT [PK_Instance] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
