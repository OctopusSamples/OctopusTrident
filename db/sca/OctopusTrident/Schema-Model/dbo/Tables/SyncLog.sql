CREATE TABLE [dbo].[SyncLog]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[SyncId] [int] NOT NULL,
[Created] [datetime2] NOT NULL,
[Type] [nvarchar] (256) NOT NULL,
[Message] [nvarchar] (2048) NOT NULL
)
GO
ALTER TABLE [dbo].[SyncLog] ADD CONSTRAINT [PK_SyncLog] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[SyncLog] ADD CONSTRAINT [FK_SyncLog_Sync] FOREIGN KEY ([SyncId]) REFERENCES [dbo].[Sync] ([Id])
GO
