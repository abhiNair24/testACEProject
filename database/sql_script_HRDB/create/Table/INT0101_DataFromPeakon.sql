USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =======================================================================================================================================
-- Author			: Shahroz Azmat (SHZA)
-- Create date		: 20230398
-- Description		: Table used to hold data from Peakon
-- =======================================================================================================================================

CREATE SCHEMA int;
GO

CREATE TABLE [int].[INT0101_DataFromPeakon](
	[active] [nvarchar](20) NULL,
	[peakonId] [nvarchar](32) NOT NULL,
	[userName] [nvarchar](128) NULL,
	[externalId] [nvarchar](32) NULL,
	[employeeNumber] [nvarchar](32) NOT NULL,
	[givenName] [nvarchar](128) NULL,
	[familyName] [nvarchar](128) NULL,
	[emails] [nvarchar](100) NULL,
	[manager] [nvarchar](100) NULL,
	[department] [nvarchar](128) NULL,
	[location] [nvarchar] (128) NULL,
	[seniority] [datetime] NULL,
	[seperationDate] [datetime] NULL,
	[seperationReason] [nvarchar](100) NULL,
	[dateOfBirth] [datetime] NULL,
	[gender] [nvarchar](32) NULL,
	[country] [nvarchar] (256) NULL,
	[companyCode] [nvarchar](128) NULL,
	[employeeGroup] [nvarchar](255) NULL,
	[employeeSubgroup] [nvarchar](255) NULL,
    [employeeType] [nvarchar](128) NULL,
	[jobTitle] [nvarchar](255) NULL,
    [payGrade] [nvarchar](255) NULL,
    [jobLevel] [nvarchar](128) NULL,
	[status] [nvarchar](20) NULL,
	[businessUnit] [nvarchar](128) NULL,
	[managerEmployee] [nvarchar](30) NULL,
	[division] [nvarchar](128) NULL,
) ON [PRIMARY]
GO
