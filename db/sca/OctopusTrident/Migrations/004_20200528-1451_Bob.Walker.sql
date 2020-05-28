-- <Migration ID="e2640a5d-e5cd-4d76-be06-cd0f8472db2a" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Add 1 row to [dbo].[SyncLogType]');

SET IDENTITY_INSERT [dbo].[SyncLogType] ON;

INSERT  INTO [dbo].[SyncLogType] ([Id], [Name], [Priority])
VALUES                          (4, 'Verbose', 30);

SET IDENTITY_INSERT [dbo].[SyncLogType] OFF;


GO