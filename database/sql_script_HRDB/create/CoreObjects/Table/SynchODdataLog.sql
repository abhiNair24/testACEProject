USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SynchODdataLog](
	[SF_Synch_Time] [datetime] NULL,
	[Type] [nvarchar](20) NULL,
	[Status] [nvarchar](20) NULL,
	[SF_Root_Object] [nvarchar](80) NULL,
	[SF_Id_Field] [nvarchar](50) NULL,
	[SF_Id_Value] [nvarchar](50) NULL,
	[Object] [nvarchar](80) NULL,
	[Event_Text] [nvarchar](1000) NULL
) ON [PRIMARY]
GO