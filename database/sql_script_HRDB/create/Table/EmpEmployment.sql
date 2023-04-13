USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmpEmployment](
	[rowId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [nvarchar](100) NOT NULL,	
	[personIdExternal] [nvarchar](32) NOT NULL,
	[initials] [nvarchar](128) NOT NULL,	
	[firstName] [nvarchar](128) NULL,	
	[lastName] [nvarchar](128) NULL,	

	[positionId] [nvarchar](128) NULL,	
	[positionName] [nvarchar](255) NULL,

	[companyCode] [nvarchar](8) NULL,
	[locationId] [nvarchar](128) NULL,
	[costCenterId] [nvarchar](32) NULL,	

	[seniorityDate] [datetime] NULL,
	[originalStartDate] [datetime] NULL,
	[recruitDate] [datetime] NULL,
	[positionEntryDate] [datetime] NULL,
	[dateOfContractTermination] [datetime] NULL,		
	[lastDateWorked] [datetime] NULL,
    [payGrade] [nvarchar](64) NULL,
    [jobLevel] [nvarchar](64) NULL,	

	[employeeClass] [nvarchar](255) NULL,
	[employeeSubClass] [nvarchar](255) NULL,
	[employeeType] [nvarchar](255) NULL,
	[employmentType] [nvarchar](255) NULL,
	[employmentStatus] [nvarchar](255) NULL,
	[isManager] [bit] NULL,		

	[standardHours] [real] NULL,
	[workingDaysPerWeek] [real] NULL,	
	[fullTimeEquivalent] [real] NULL,

	[orgUnitId] [nvarchar](32) NULL,
	[businessUnit] [nvarchar](32) NULL,
	[division] [nvarchar](32) NULL,
	[department] [nvarchar](32) NULL,
	[orgUnitLevel1] [nvarchar](128) NULL,
	[orgUnitLevel2] [nvarchar](128) NULL,
	[orgUnitLevel3] [nvarchar](128) NULL,
	[orgUnitLevel4] [nvarchar](128) NULL,
	[orgUnitLevel5] [nvarchar](128) NULL,
	[orgUnitLevel6] [nvarchar](128) NULL,

	[businessEmail] [nvarchar](100) NULL,
	[businessMobileCountryCode] [nvarchar](32) NULL,
	[businessMobilePhoneNumber] [nvarchar](100) NULL,
	[businessLandlineCountryCode] [nvarchar](32) NULL,
	[businessLandlinePhoneNumber] [nvarchar](100) NULL,
	[buildingNumber] [nvarchar](255) NULL,
	[roomNumber] [nvarchar](255) NULL,

	[managerUserId] [nvarchar](100) NULL,
	[contingentWorkerAdminPositionId] [nvarchar](128) NULL,
	[parentPositionId] [nvarchar](128) NULL,

	[event] [nvarchar](255) NULL,
	[eventReason] [nvarchar](100) NULL,	
	[eventDate] [datetime] NULL,		

	[recordFromDate] [datetime] NULL,
	[recordToDate] [datetime] NULL,
	[lastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_EmpEmployment] PRIMARY KEY CLUSTERED 
(
	[rowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO