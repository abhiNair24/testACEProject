USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrgUnit](
	[orgUnitId] [nvarchar](32) NOT NULL,
	[name] [nvarchar](90) NULL,
	[orgUnitType] [nvarchar](20) NULL,
	[orgUnitParent] [nvarchar](32) NULL,
	[costCenterId] [nvarchar](32) NULL,
	[headOfUnitUserId] [nvarchar](100) NULL,
	[status] [nvarchar](2) NULL,
	[recordLastUpdated] [datetime] NULL,
	[lastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_OrgUnit] PRIMARY KEY CLUSTERED 
(
	[orgUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO


