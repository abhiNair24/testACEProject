USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Country](
	[countryCode] [nvarchar](8) NOT NULL,
	[name] [nvarchar](255) NULL,
	[twoCharCountryCode] [nvarchar](128) NULL,
	[currency] [nvarchar](128) NULL,	
	[status] [nvarchar](2) NULL,
	[recordLastUpdated] [datetime] NULL,
	[lastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[countryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO


