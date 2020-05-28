CREATE TABLE [dbo].[SyncLogType]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (256) NOT NULL,
[Priority] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[SyncLogType] ADD CONSTRAINT [PK_SyncLogType] PRIMARY KEY CLUSTERED  ([Id])
GO
