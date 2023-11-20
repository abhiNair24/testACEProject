USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Company](
	[companyCode] [nvarchar](8) NOT NULL,
	[name] [nvarchar](255) NULL,
	[country] [nvarchar](128) NULL,
	[defaultLocationId] [nvarchar](32) NULL,
	[status] [nvarchar](2) NULL,
	[recordLastUpdated] [datetime] NULL,
	[lastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[companyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


