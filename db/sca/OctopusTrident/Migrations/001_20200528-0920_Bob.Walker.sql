-- <Migration ID="5ce07c1f-25ab-4614-b52c-8195ba898a45" />
GO

PRINT N'Creating role role_webuser'
GO
CREATE ROLE [role_webuser]
AUTHORIZATION [dbo]
GO
PRINT N'Creating [dbo].[Environment]'
GO
CREATE TABLE [dbo].[Environment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Environment] on [dbo].[Environment]'
GO
ALTER TABLE [dbo].[Environment] ADD CONSTRAINT [PK_Environment] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Deployment]'
GO
CREATE TABLE [dbo].[Deployment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[ReleaseId] [int] NOT NULL,
[EnvironmentId] [int] NOT NULL,
[TenantId] [int] NULL,
[QueueTime] [datetime2] NOT NULL,
[StartTime] [datetime2] NULL,
[CompletedTime] [datetime2] NULL,
[DeploymentState] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Deployment] on [dbo].[Deployment]'
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [PK_Deployment] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Release]'
GO
CREATE TABLE [dbo].[Release]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[ProjectId] [int] NOT NULL,
[Version] [nvarchar] (256) NOT NULL,
[Created] [datetime2] NOT NULL
)
GO
PRINT N'Creating primary key [PK_Release] on [dbo].[Release]'
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [PK_Release] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Tenant]'
GO
CREATE TABLE [dbo].[Tenant]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Tenant] on [dbo].[Tenant]'
GO
ALTER TABLE [dbo].[Tenant] ADD CONSTRAINT [PK_Tenant] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Space]'
GO
CREATE TABLE [dbo].[Space]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[InstanceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Space] on [dbo].[Space]'
GO
ALTER TABLE [dbo].[Space] ADD CONSTRAINT [PK_Space] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Project]'
GO
CREATE TABLE [dbo].[Project]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[SpaceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Project] on [dbo].[Project]'
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Instance]'
GO
CREATE TABLE [dbo].[Instance]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[Name] [nvarchar] (256) NOT NULL,
[Url] [nvarchar] (1024) NOT NULL,
[ApiKey] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Instance] on [dbo].[Instance]'
GO
ALTER TABLE [dbo].[Instance] ADD CONSTRAINT [PK_Instance] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[Sync]'
GO
CREATE TABLE [dbo].[Sync]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[InstanceId] [int] NOT NULL,
[State] [nvarchar] (256) NOT NULL,
[Name] [nvarchar] (1024) NOT NULL,
[Created] [datetime2] NOT NULL,
[Started] [datetime2] NULL,
[Completed] [datetime2] NULL,
[SearchStateDate] [datetime2] NULL,
[RetryAttempts] [int] NULL
)
GO
PRINT N'Creating primary key [PK_Sync] on [dbo].[Sync]'
GO
ALTER TABLE [dbo].[Sync] ADD CONSTRAINT [PK_Sync] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[SyncLog]'
GO
CREATE TABLE [dbo].[SyncLog]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[SyncId] [int] NOT NULL,
[Created] [datetime2] NOT NULL,
[Type] [nvarchar] (256) NOT NULL,
[Message] [nvarchar] (2048) NOT NULL
)
GO
PRINT N'Creating primary key [PK_SyncLog] on [dbo].[SyncLog]'
GO
ALTER TABLE [dbo].[SyncLog] ADD CONSTRAINT [PK_SyncLog] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Deployment]'
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [FK_Deployment_Release] FOREIGN KEY ([ReleaseId]) REFERENCES [dbo].[Release] ([Id])
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [FK_Deployment_Environment] FOREIGN KEY ([EnvironmentId]) REFERENCES [dbo].[Environment] ([Id])
GO
ALTER TABLE [dbo].[Deployment] ADD CONSTRAINT [FK_Deployment_Tenant] FOREIGN KEY ([TenantId]) REFERENCES [dbo].[Tenant] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Environment]'
GO
ALTER TABLE [dbo].[Environment] ADD CONSTRAINT [FK_Environment_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Space]'
GO
ALTER TABLE [dbo].[Space] ADD CONSTRAINT [FK_Space_Instance] FOREIGN KEY ([InstanceId]) REFERENCES [dbo].[Instance] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Sync]'
GO
ALTER TABLE [dbo].[Sync] ADD CONSTRAINT [FK_Sync_Instance] FOREIGN KEY ([InstanceId]) REFERENCES [dbo].[Instance] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Release]'
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [FK_Release_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Project]'
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [FK_Project_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[Tenant]'
GO
ALTER TABLE [dbo].[Tenant] ADD CONSTRAINT [FK_Tenant_Space] FOREIGN KEY ([SpaceId]) REFERENCES [dbo].[Space] ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[SyncLog]'
GO
ALTER TABLE [dbo].[SyncLog] ADD CONSTRAINT [FK_SyncLog_Sync] FOREIGN KEY ([SyncId]) REFERENCES [dbo].[Sync] ([Id])
GO
PRINT N'Altering permissions on SCHEMA:: [dbo]'
GO
GRANT DELETE ON SCHEMA:: [dbo] TO [role_webuser]
GO
GRANT EXECUTE ON SCHEMA:: [dbo] TO [role_webuser]
GO
GRANT INSERT ON SCHEMA:: [dbo] TO [role_webuser]
GO
GRANT SELECT ON SCHEMA:: [dbo] TO [role_webuser]
GO
GRANT UPDATE ON SCHEMA:: [dbo] TO [role_webuser]
GO
