-- <Migration ID="ac4b6873-2f9f-4668-93dd-df54b8102f84" />
GO


SET DATEFORMAT YMD;


GO
IF (SELECT COUNT(*)
    FROM   [dbo].[SyncLogType]) = 0
    BEGIN
        PRINT (N'Add 3 rows to [dbo].[SyncLogType]');
        SET IDENTITY_INSERT [dbo].[SyncLogType] ON;
        INSERT  INTO [dbo].[SyncLogType] ([Id], [Name], [Priority])
        VALUES                          (1, 'Error', 1);
        INSERT  INTO [dbo].[SyncLogType] ([Id], [Name], [Priority])
        VALUES                          (2, 'Warning', 10);
        INSERT  INTO [dbo].[SyncLogType] ([Id], [Name], [Priority])
        VALUES                          (3, 'Information', 20);
        SET IDENTITY_INSERT [dbo].[SyncLogType] OFF;
    END


GO