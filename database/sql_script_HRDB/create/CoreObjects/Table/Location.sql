USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Location](
	[locationId] [nvarchar](32) NOT NULL,
	[name] [nvarchar](32) NULL,
	[timezone] [nvarchar](256) NULL,
	[companyCode] [nvarchar](8) NULL,
	[country] [nvarchar](256) NULL,
	[state] [nvarchar](256) NULL,
	[province] [nvarchar](256) NULL,
	[city] [nvarchar](256) NULL,
	[zipCode] [nvarchar](256) NULL,
	[address1] [nvarchar](256) NULL,
	[address2] [nvarchar](256) NULL,
	[address3] [nvarchar](256) NULL,
	[address6] [nvarchar](256) NULL,
	[status] [nvarchar](2) NULL,
	[recordLastUpdated] [datetime] NULL,
	[lastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[locationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO


