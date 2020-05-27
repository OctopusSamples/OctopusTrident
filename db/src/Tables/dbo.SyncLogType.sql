CREATE TABLE [dbo].[SyncLogType]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SyncLogType] ADD CONSTRAINT [PK_SyncLogType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
