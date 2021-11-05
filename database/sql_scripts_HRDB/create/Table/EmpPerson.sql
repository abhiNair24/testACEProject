USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmpPerson](
	[personIdExternal] [nvarchar](32) NOT NULL,
	[initials] [nvarchar](128) NOT NULL,	
	[salutation] [nvarchar](256) NULL,	
	[gender] [nvarchar](2) NULL,	
	[nationality] [nvarchar](128) NULL,
	[nativePreferredLanguage] [nvarchar](256) NULL,
	[dateOfBirth] [datetime] NULL,
	[country] [nvarchar](256) NULL,
	[state] [nvarchar](256) NULL,
	[city] [nvarchar](256) NULL,
	[zipCode] [nvarchar](256) NULL,
	[address1] [nvarchar](256) NULL,
	[address2] [nvarchar](256) NULL,
	[address3] [nvarchar](256) NULL,
	[address4] [nvarchar](256) NULL,
	[personalEmail] [nvarchar](100) NULL,
	[privatePhoneCountryCode] [nvarchar](32) NULL,
	[privatePhoneNumber] [nvarchar](100) NULL,
	[recordLastUpdated] [datetime] NULL,	
	[lastSyncDate] [datetime] NULL,	
 CONSTRAINT [PK_EmpPerson] PRIMARY KEY CLUSTERED 
(
	[personIdExternal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO