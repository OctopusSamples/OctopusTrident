CREATE TABLE [dbo].[Sync]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[InstanceId] [int] NOT NULL,
[State] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Created] [datetime2] NOT NULL,
[Started] [datetime2] NULL,
[Completed] [datetime2] NULL,
[SearchStateDate] [datetime2] NULL,
[RetryAttempts] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sync] ADD CONSTRAINT [PK_Sync] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sync] ADD CONSTRAINT [FK_Sync_Instance] FOREIGN KEY ([InstanceId]) REFERENCES [dbo].[Instance] ([Id])
GO
