CREATE DATABASE [dbtest]
GO
ALTER LOGIN sa WITH PASSWORD = 'cortex' UNLOCK, CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF
GO
ALTER DATABASE [dbtest] SET MULTI_USER
USE [dbtest]
GO
CREATE LOGIN [cortex] WITH PASSWORD = 'cortex', CHECK_POLICY = off;
GO
CREATE USER [cortex] FOR LOGIN [cortex]
GO
ALTER SERVER ROLE sysadmin ADD MEMBER [cortex]
GO
ALTER LOGIN [cortex] WITH PASSWORD = 'cortex', DEFAULT_DATABASE = [dbtest], CHECK_POLICY = OFF, CHECK_EXPIRATION =OFF
GO
exec sp_addrolemember 'db_owner', 'cortex'
GO
