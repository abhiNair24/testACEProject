USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ISOCountryCode](
	[country] [nvarchar](200) NOT NULL,
	[alpha2Code] [nvarchar](2) NOT NULL,
	[alpha3Code] [nvarchar](3) NOT NULL)
	ON [PRIMARY]
GO