CREATE TABLE [dbo].[Deployment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ReleaseId] [int] NOT NULL,
[EnvironmentId] [int] NOT NULL,
[TenantId] [int] NULL,
[QueueTime] [datetime2] NOT NULL,
[StartTime] [datetime2] NULL,
[CompletedTime] [datetime2] NULL,
[DeploymentState] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [PK_Deployment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [FK_Deployment_Environment] FOREIGN KEY ([EnvironmentId]) REFERENCES [dbo].[Environment] ([Id])
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [FK_Deployment_Release] FOREIGN KEY ([ReleaseId]) REFERENCES [dbo].[Release] ([Id])
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [FK_Deployment_Tenant] FOREIGN KEY ([TenantId]) REFERENCES [dbo].[Tenant] ([Id])
GO
