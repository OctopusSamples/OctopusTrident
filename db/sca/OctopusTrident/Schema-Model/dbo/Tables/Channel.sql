CREATE TABLE [dbo].[Channel]
(
[Id] [int] NOT NULL,
[Name] [varchar] (256) NOT NULL
)
GO
ALTER TABLE [dbo].[Channel] ADD CONSTRAINT [PK_Channel] PRIMARY KEY CLUSTERED  ([Id])
GO
