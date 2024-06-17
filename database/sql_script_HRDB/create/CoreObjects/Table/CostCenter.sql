USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CostCenter](
	[costcenterId] [nvarchar](32) NOT NULL,
	[name] [nvarchar](90) NULL,
	[locationId] [nvarchar](32) NULL,
	[managerUserId] [nvarchar](100) NULL,
	[status] [nvarchar](2) NULL,
	[recordLastUpdated] [datetime] NULL,
	[lastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_tblCostctr] PRIMARY KEY CLUSTERED 
(
	[costcenterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO