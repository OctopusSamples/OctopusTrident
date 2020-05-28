CREATE TABLE [dbo].[Tenant]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
ALTER TABLE [dbo].[Tenant] ADD CONSTRAINT [PK_Tenant] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[Tenant] ADD CONSTRAINT [FK_Tenant_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
