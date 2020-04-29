CREATE TABLE [dbo].[Tenant]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tenant] ADD CONSTRAINT [PK_Tenant] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tenant] ADD CONSTRAINT [FK_Tenant_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
