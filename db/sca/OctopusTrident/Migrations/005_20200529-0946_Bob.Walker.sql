-- <Migration ID="b4107584-40c1-4c3c-97b6-b4f43d843e9a" />
GO

PRINT N'Altering [dbo].[Release]'
GO
ALTER TABLE [dbo].[Release] ADD
[ChannelId] [int] NULL
GO
PRINT N'Creating [dbo].[Channel]'
GO
CREATE TABLE [dbo].[Channel]
(
[Id] [int] NOT NULL,
[Name] [varchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Channel] on [dbo].[Channel]'
GO
ALTER TABLE [dbo].[Channel] ADD CONSTRAINT [PK_Channel] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Release]'
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [FK_Release_Channel] FOREIGN KEY ([ChannelId]) REFERENCES [dbo].[Channel] ([Id])
GO
