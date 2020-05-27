SET IDENTITY_INSERT [dbo].[SyncLogType] ON
INSERT INTO [dbo].[SyncLogType] ([Id], [Name], [Priority]) VALUES (1, 'Information', 20)
INSERT INTO [dbo].[SyncLogType] ([Id], [Name], [Priority]) VALUES (2, 'Error', 1)
INSERT INTO [dbo].[SyncLogType] ([Id], [Name], [Priority]) VALUES (3, 'Warning', 10)
SET IDENTITY_INSERT [dbo].[SyncLogType] OFF
