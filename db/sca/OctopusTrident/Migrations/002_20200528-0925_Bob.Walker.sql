-- <Migration ID="625eb893-a4dc-4ea5-aca5-a90fe4c217da" />
GO

PRINT N'Creating [dbo].[SyncLogType]'
GO
CREATE TABLE [dbo].[SyncLogType]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (256) NOT NULL,
[Priority] [int] NOT NULL
)
GO
PRINT N'Creating primary key [PK_SyncLogType] on [dbo].[SyncLogType]'
GO
ALTER TABLE [dbo].[SyncLogType] ADD CONSTRAINT [PK_SyncLogType] PRIMARY KEY CLUSTERED  ([Id])
GO
