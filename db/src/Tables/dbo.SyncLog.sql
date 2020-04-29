CREATE TABLE [dbo].[SyncLog]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[SyncId] [int] NOT NULL,
[Created] [datetime2] NOT NULL,
[Type] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Message] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SyncLog] ADD CONSTRAINT [PK_SyncLog] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SyncLog] ADD CONSTRAINT [FK_SyncLog_Sync] FOREIGN KEY ([SyncId]) REFERENCES [dbo].[Sync] ([Id])
GO
